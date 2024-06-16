import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:animated_tree_view/tree_view/tree_node.dart';
import 'package:animated_tree_view/tree_view/tree_view.dart';
import 'package:animated_tree_view/tree_view/widgets/expansion_indicator.dart';
import 'package:animated_tree_view/tree_view/widgets/indent.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';

class ModelPipeForm extends StatelessWidget {
  final String content;
  final ExpectedPayload expectedPayload;
  const ModelPipeForm({
    super.key,
    required this.content,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayloadCubit, PayloadState>(
      buildWhen: (prev, curr) {
        final prevDtos = prev.expectedPayloadDto?.modelDtos;
        final currDtos = curr.expectedPayloadDto?.modelDtos;
        if (prevDtos == null || currDtos == null) return true;
        return listEquals(prevDtos, currDtos) == false;
      },
      builder: (context, state) {
        final pipes = state.expectedPayloadDto?.modelDtos ?? <ModelPipeDto>[];

        if (pipes.isEmpty) return SizedBox.fromSize();

        return LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomHeader(headerTitle: 'Model variables payload'),
                const SizedBox(height: 8),
                ...pipes.map((ModelPipeDto pipe) {
                  final treeNode = TreeNode<PipeDTO>.root(data: pipe);
                  treeNode.addAll(_getModelPipes(ModelDTONode(data: pipe)));
                  return SizedBox(
                    width: constraints.maxWidth,
                    // height: 400,
                    child: TreeView.simpleTyped<PipeDTO, TreeNode<PipeDTO>>(
                      tree: treeNode,
                      showRootNode: true,
                      shrinkWrap: true,
                      expansionBehavior: ExpansionBehavior.scrollToLastChild,
                      indentation: const Indentation(),
                      expansionIndicatorBuilder: (context, node) {
                        if (node.isRoot) {
                          return PlusMinusIndicator(
                            tree: node,
                            alignment: Alignment.centerLeft,
                            color: Colors.grey[700],
                          );
                        }

                        return ChevronIndicator.rightDown(
                          tree: node,
                          alignment: Alignment.centerLeft,
                          color: Colors.grey[700],
                        );
                      },
                      builder: (context, TreeNode<PipeDTO> node) {
                        final dto = node.data;
                        final String title = switch (dto) {
                          null => 'N/A',
                          TextPipeDto() => dto.pipe.name,
                          BooleanPipeDto() => dto.pipe.name,
                          ModelPipeDto() => dto.pipe.name,
                        };
                        final String subtitle = switch (dto) {
                          null => 'N/A',
                          TextPipeDto() => 'Text',
                          BooleanPipeDto() => 'Boolean',
                          ModelPipeDto() => 'Model',
                        };
                        final IconData icon = switch (dto) {
                          null => Icons.radio_button_unchecked_sharp,
                          TextPipeDto() => Icons.text_fields,
                          BooleanPipeDto() => Icons.compare_arrows_rounded,
                          ModelPipeDto() => Icons.folder,
                        };
                        return Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ListTile(
                            title: Text(title),
                            subtitle: Text(subtitle),
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Icon(icon),
                            ),
                          ),
                        );
                      },
                    ),
                    //     TreeView.simpleTyped<Explorable, TreeNode<Explorable>>(
                    //   tree: tree,
                    //   showRootNode: true,
                    //   expansionBehavior: ExpansionBehavior.scrollToLastChild,
                    //   expansionIndicatorBuilder: (context, node) {
                    //     if (node.isRoot) {
                    //       return PlusMinusIndicator(
                    //         tree: node,
                    //         alignment: Alignment.centerLeft,
                    //         color: Colors.grey[700],
                    //       );
                    //     }

                    //     return ChevronIndicator.rightDown(
                    //       tree: node,
                    //       alignment: Alignment.centerLeft,
                    //       color: Colors.grey[700],
                    //     );
                    //   },
                    //   indentation: const Indentation(),
                    //   builder: (context, node) => Padding(
                    //     padding: const EdgeInsets.only(left: 16.0),
                    //     child: ListTile(
                    //       title: Text(node.data?.name ?? "N/A"),
                    //       subtitle:
                    //           Text(node.data?.createdAt.toString() ?? "N/A"),
                    //       leading: Padding(
                    //         padding: const EdgeInsets.only(top: 8.0),
                    //         child: node.icon,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    // child: CustomScrollView(
                    //   slivers: [
                    //     SliverTreeView.simple(
                    //       tree: TreeNode.root(),
                    //       builder: (context, node) {
                    //         // build your node item here
                    //         // return any widget that you need
                    //         return ListTile(
                    //           title: Text("Item ${node.level}-${node.key}"),
                    //           subtitle: Text('Level ${node.level}'),
                    //         );
                    //       },
                    //     ),
                    //   ],
                    // ),
                  );
                }).toList(),
              ],
            );
          },
        );
      },
    );
  }

  Iterable<Node> _getModelPipes(TreeNode<ModelPipeDto> pipe) {
    final result = [
      ...?pipe.data?.texts
          .map((e) => TextDTONode(
                data: e,
              ))
          .toList(),
      ...?pipe.data?.booleans
          .map((e) => BooleanDTONode(
                data: e,
              ))
          .toList(),
      ...?pipe.data?.subModels.map((e) {
        final modelDTO = ModelDTONode(
          data: e,
        );

        modelDTO.addAll(_getModelPipes(modelDTO));

        return modelDTO;
      }).toList(),
    ];

    return result;
  }
}

extension on ExplorableNode {
  Icon get icon {
    if (isRoot) return const Icon(Icons.data_object);

    if (this is FolderNode) {
      if (isExpanded) return const Icon(Icons.folder_open);
      return const Icon(Icons.folder);
    }

    if (this is FileNode) {
      final file = data as File;
      if (file.mimeType.startsWith("image")) return const Icon(Icons.image);
      if (file.mimeType.startsWith("video")) {
        return const Icon(Icons.video_file);
      }
    }

    return const Icon(Icons.insert_drive_file);
  }
}

abstract class ModelExplorable<P extends Pipe, V> extends Equatable {
  final PipeDTO<P, V> pipeDto;
  const ModelExplorable({
    required this.pipeDto,
  });
}

abstract class Explorable {
  final String name;
  final DateTime createdAt;

  Explorable(this.name) : createdAt = DateTime.now();

  @override
  String toString() => name;
}

class File extends Explorable {
  final String mimeType;

  File(super.name, {required this.mimeType});
}

class Folder extends Explorable {
  Folder(super.name);
}

typedef ExplorableNode = TreeNode<Explorable>;

typedef TextDTONode = TreeNode<TextPipeDto>;
typedef BooleanDTONode = TreeNode<BooleanPipeDto>;
typedef ModelDTONode = TreeNode<ModelPipeDto>;
typedef FileNode = TreeNode<File>;

typedef FolderNode = TreeNode<Folder>;

TreeNode<Explorable> get tree => TreeNode<Explorable>.root(
    data: Folder("/root"))
  ..addAll([
    FolderNode(data: Folder("Documents"))
      ..addAll([
        FileNode(
          data: File("report.doc", mimeType: "application/msword"),
        ),
        FileNode(
          data: File("budget.xls", mimeType: "application/vnd.ms-excel"),
        ),
        FileNode(
          data: File("training.ppt", mimeType: "application/vnd.ms-powerpoint"),
        )
      ]),
    FolderNode(data: Folder("Media"))
      ..addAll([
        FolderNode(data: Folder("Pictures"))
          ..addAll([
            FileNode(data: File("birthday_1.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("birthday_2.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("birthday_3.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("birthday_4.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("birthday_5.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("birthday_6.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("birthday_7.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("birthday_8.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("birthday_9.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("lunch_1.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("lunch_2.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("lunch_3.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("lunch_4.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("lunch_5.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("lunch_6.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("lunch_7.jpg", mimeType: "image/jpeg")),
            FileNode(data: File("banner.png", mimeType: "image/png")),
          ]),
        FolderNode(data: Folder("Videos"))
          ..addAll([
            FolderNode(data: Folder("Birthday_23"))
              ..addAll([
                FileNode(
                    data: File("birthday_23_1.mp4", mimeType: "video/mp4")),
                FileNode(
                    data: File("birthday_23_2.mp4", mimeType: "video/mp4")),
              ]),
            FolderNode(data: Folder("vacation_ibiza"))
              ..addAll([
                FileNode(data: File("snorkeling.mp4", mimeType: "video/mp4")),
                FileNode(data: File("scuba.mp4", mimeType: "video/mp4")),
              ])
          ])
      ]),
    FolderNode(data: Folder("System"))
      ..addAll([
        FolderNode(data: Folder("temp")),
        FolderNode(data: Folder("apps"))
          ..addAll([
            FileNode(
              data: File("word.exe", mimeType: "application/win32_exe"),
            ),
            FileNode(
              data: File("powerpoint.exe", mimeType: "application/win32_exe"),
            ),
            FileNode(
              data: File("excel.exe", mimeType: "application/win32_exe"),
            ),
          ]),
        FileNode(
          data: File("sys.exe", mimeType: "application/win32_exe"),
        ),
        FileNode(
          data: File("config.exe", mimeType: "application/win32_exe"),
        )
      ]),
  ]);
