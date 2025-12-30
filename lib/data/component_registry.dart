import '../models/ui_component_item.dart';

// demos
import '../demos/demo_display.dart';
import '../demos/demo_input.dart';
import '../demos/demo_layout.dart';
import '../demos/demo_buttons.dart';
import '../demos/demo_feedback.dart';
import '../demos/demo_navigation.dart';

List<UIComponentItem> buildRegistry() {
  return [
    // DISPLAY
    UIComponentItem(
      category: 'Display',
      title: 'Text & RichText',
      subtitle: 'Styled text',
      builder: (_) => const TextDemoScreen(),
    ),
    UIComponentItem(
      category: 'Display',
      title: 'Image',
      subtitle: 'Image.network + fallback',
      builder: (_) => const ImageDemoScreen(),
    ),
    UIComponentItem(
      category: 'Display',
      title: 'Icon',
      subtitle: 'Icons and sizes',
      builder: (_) => const IconDemoScreen(),
    ),

    // INPUT
    UIComponentItem(
      category: 'Input',
      title: 'TextField',
      subtitle: 'Text input',
      builder: (_) => const TextFieldDemoScreen(),
    ),
    UIComponentItem(
      category: 'Input',
      title: 'PasswordField',
      subtitle: 'Obscure toggle',
      builder: (_) => const PasswordFieldDemoScreen(),
    ),
    UIComponentItem(
      category: 'Input',
      title: 'Checkbox',
      subtitle: 'CheckboxListTile',
      builder: (_) => const CheckboxDemoScreen(),
    ),
    UIComponentItem(
      category: 'Input',
      title: 'Radio',
      subtitle: 'Radio group',
      builder: (_) => const RadioDemoScreen(),
    ),
    UIComponentItem(
      category: 'Input',
      title: 'Switch',
      subtitle: 'SwitchListTile',
      builder: (_) => const SwitchDemoScreen(),
    ),
    UIComponentItem(
      category: 'Input',
      title: 'Slider',
      subtitle: 'Slider + RangeSlider',
      builder: (_) => const SliderDemoScreen(),
    ),
    UIComponentItem(
      category: 'Input',
      title: 'Dropdown',
      subtitle: 'DropdownButtonFormField',
      builder: (_) => const DropdownDemoScreen(),
    ),

    // LAYOUT
    UIComponentItem(
      category: 'Layout',
      title: 'Column',
      subtitle: 'Vertical layout',
      builder: (_) => const ColumnDemoScreen(),
    ),
    UIComponentItem(
      category: 'Layout',
      title: 'Row',
      subtitle: 'Horizontal layout',
      builder: (_) => const RowDemoScreen(),
    ),
    UIComponentItem(
      category: 'Layout',
      title: 'Stack',
      subtitle: 'Overlay widgets',
      builder: (_) => const StackDemoScreen(),
    ),
    UIComponentItem(
      category: 'Layout',
      title: 'Wrap',
      subtitle: 'Flow layout',
      builder: (_) => const WrapDemoScreen(),
    ),

    // BUTTONS
    UIComponentItem(
      category: 'Buttons',
      title: 'Buttons set',
      subtitle: 'Filled/Elevated/Outlined/Text/Icon',
      builder: (_) => const ButtonsDemoScreen(),
    ),
    UIComponentItem(
      category: 'Buttons',
      title: 'FloatingActionButton',
      subtitle: 'FAB + SnackBar',
      builder: (_) => const FabDemoScreen(),
    ),

    // FEEDBACK
    // UIComponentItem(
    //   category: 'Feedback',
    //   title: 'SnackBar',
    //   subtitle: 'Show SnackBar',
    //   builder: (_) => const SnackBarDemoScreen(),
    // ),
    // UIComponentItem(
    //   category: 'Feedback',
    //   title: 'Dialog',
    //   subtitle: 'AlertDialog',
    //   builder: (_) => const DialogDemoScreen(),
    // ),
    UIComponentItem(
      category: 'Feedback',
      title: 'BottomSheet',
      subtitle: 'Modal bottom sheet',
      builder: (_) => const BottomSheetDemoScreen(),
    ),
    UIComponentItem(
      category: 'Feedback',
      title: 'Progress',
      subtitle: 'Linear & Circular',
      builder: (_) => const ProgressDemoScreen(),
    ),

    // NAVIGATION
    UIComponentItem(
      category: 'Navigation',
      title: 'TabBar',
      subtitle: 'Tabs navigation',
      builder: (_) => const TabsDemoScreen(),
    ),
    UIComponentItem(
      category: 'Navigation',
      title: 'Drawer',
      subtitle: 'Side drawer',
      builder: (_) => const DrawerDemoScreen(),
    ),
    UIComponentItem(
      category: 'Navigation',
      title: 'BottomNavigationBar',
      subtitle: 'Bottom nav',
      builder: (_) => const BottomNavDemoScreen(),
    ),
  ];
}
