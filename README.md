# mustachehub

## Getting Started

In `packages/` folder, use:
- package_name: name of the package
```dart create [package_name] --template=package --no-pub```

# Arquiteture
📦 src 
┗━┳━📂 **_module/
  ┣━┳━📂 interactor/
  ┃ ┣━┳━📂 entities/
  ┃ ┃ ┗━━━📄 **_entity.dart
  ┃ ┣━┳━📂 mixins/
  ┃ ┃ ┗━━━📄 **_mixin.dart
  ┃ ┣━┳━📂 text_editing_controllers/
  ┃ ┃ ┗━━━📄 **_editing_controllers.dart
  ┃ ┣━┳━📂 validators/
  ┃ ┃ ┗━━━📄 **_validator.dart
  ┃ ┗━┳━📂 input_formaters/
  ┃   ┗━━━📄 **_input_formaters.dart
  ┃
  ┣━┳━📂 data
  ┃ ┣━┳━📂 services/
  ┃ ┃ ┗━━━📄 **_service.dart
  ┃ ┣━┳━📂 adapters/
  ┃ ┃ ┗━━━📄 **_adapter.dart
  ┃ ┗━┳━📂 repositories/
  ┃   ┗━━━📄 **_repository.dart
  ┃
  ┣━┳━📂 presenter/
  ┃ ┣━┳━📂 dtos/
  ┃ ┃ ┗━━━📄 **_dto.dart
  ┃ ┣━┳━📂 models/
  ┃ ┃ ┗━━━📄 **_model.dart
  ┃ ┣━┳━📂 states/
  ┃ ┃ ┗━━━📄 **_state.dart
  ┃ ┣━┳━📂 cubits/
  ┃ ┃ ┗━━━📄 **_cubit.dart
  ┃ ┣━┳━📂 blocs/
  ┃ ┃ ┗━━━📄 **_bloc.dart
  ┃ ┣━┳━📂 controllers/
  ┃ ┃ ┗━━━📄 **_controller.dart 
  ┃ ┗━┳━📂 streams/
  ┃   ┗━━━📄 **_stream.dart 
  ┃
  ┗━┳━📂 ui 
    ┣━┳━📂 wrappers/
    ┃ ┗━━━📄 **_wrappers.dart
    ┃
    ┣━┳━📂 i18n/
    ┃ ┗━━━📄 **_en.dart  
    ┃
    ┗━┳━📂 views/ 
      ┣━┳━📂 methods/
      ┃ ┗━━━📄 **_method.dart 
      ┃
      ┗━┳━📂 **_view/
        ┣━┳━📂 methods/
        ┃ ┗━━━📄 **_method.dart 
        ┃
        ┣━┳━📂 forms/
        ┃ ┗━━━📄 **_form.dart 
        ┃
        ┣━┳━📂 bottomsheets/
        ┃ ┗━┳━📂 **_bottomsheet/
        ┃   ┣━━━📂 **
        ┃   ┗━━━📄 **_bottomsheet.dart
        ┃
        ┣━┳━📂 dialogs/
        ┃ ┗━┳━📂 **_dialog/
        ┃   ┣━━━📂 **
        ┃   ┗━━━📄 **_dialog.dart
        ┃
        ┣━┳━📂 pages/
        ┃ ┗━┳━📂 **_page/
        ┃   ┣━━━📂 **
        ┃   ┗━━━📄 **_page.dart 
        ┃
        ┣━┳━📂 sections/
        ┃ ┗━┳━📂 **_section/
        ┃   ┣━━━📂 **
        ┃   ┗━━━📄 **_section.dart 
        ┃
        ┣━┳━📂 widgets/
        ┃ ┗━┳━📂 **_widget/
        ┃   ┣━━━📂 **
        ┃   ┗━━━📄 **_widget.dart
        ┃
        ┗━┳━📂 component/
          ┗━┳━📂 **_component/
            ┣━━━📂 **
            ┗━━━📄 **_component.dart
          