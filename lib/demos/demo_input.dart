import 'package:flutter/material.dart';

class TextFieldDemoScreen extends StatefulWidget {
  const TextFieldDemoScreen({super.key});
  @override
  State<TextFieldDemoScreen> createState() => _TextFieldDemoScreenState();
}

class _TextFieldDemoScreenState extends State<TextFieldDemoScreen> {
  final c = TextEditingController();
  @override
  void dispose() { c.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: c,
              decoration: const InputDecoration(labelText: 'Nhập nội dung', border: OutlineInputBorder()),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 12),
            Align(alignment: Alignment.centerLeft, child: Text('Bạn đã nhập: ${c.text}')),
          ],
        ),
      ),
    );
  }
}

class PasswordFieldDemoScreen extends StatefulWidget {
  const PasswordFieldDemoScreen({super.key});
  @override
  State<PasswordFieldDemoScreen> createState() => _PasswordFieldDemoScreenState();
}

class _PasswordFieldDemoScreenState extends State<PasswordFieldDemoScreen> {
  bool obscure = true;
  final c = TextEditingController();
  @override
  void dispose() { c.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PasswordField'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: c,
          obscureText: obscure,
          decoration: InputDecoration(
            labelText: 'Mật khẩu',
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(obscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () => setState(() => obscure = !obscure),
            ),
          ),
        ),
      ),
    );
  }
}

class CheckboxDemoScreen extends StatefulWidget {
  const CheckboxDemoScreen({super.key});
  @override
  State<CheckboxDemoScreen> createState() => _CheckboxDemoScreenState();
}

class _CheckboxDemoScreenState extends State<CheckboxDemoScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox'), centerTitle: true),
      body: CheckboxListTile(
        value: value,
        onChanged: (v) => setState(() => value = v ?? false),
        title: const Text('CheckboxListTile'),
        subtitle: Text(value ? 'Checked' : 'Unchecked'),
      ),
    );
  }
}

class RadioDemoScreen extends StatefulWidget {
  const RadioDemoScreen({super.key});
  @override
  State<RadioDemoScreen> createState() => _RadioDemoScreenState();
}

class _RadioDemoScreenState extends State<RadioDemoScreen> {
  String group = 'A';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radio'), centerTitle: true),
      body: Column(
        children: [
          RadioListTile(value: 'A', groupValue: group, onChanged: (v) => setState(() => group = v!), title: const Text('Option A')),
          RadioListTile(value: 'B', groupValue: group, onChanged: (v) => setState(() => group = v!), title: const Text('Option B')),
          Text('Selected: $group'),
        ],
      ),
    );
  }
}

class SwitchDemoScreen extends StatefulWidget {
  const SwitchDemoScreen({super.key});
  @override
  State<SwitchDemoScreen> createState() => _SwitchDemoScreenState();
}

class _SwitchDemoScreenState extends State<SwitchDemoScreen> {
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch'), centerTitle: true),
      body: SwitchListTile(
        value: on,
        onChanged: (v) => setState(() => on = v),
        title: const Text('SwitchListTile'),
        subtitle: Text(on ? 'ON' : 'OFF'),
      ),
    );
  }
}

class SliderDemoScreen extends StatefulWidget {
  const SliderDemoScreen({super.key});
  @override
  State<SliderDemoScreen> createState() => _SliderDemoScreenState();
}

class _SliderDemoScreenState extends State<SliderDemoScreen> {
  double v = 30;
  RangeValues rv = const RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Slider: ${v.toStringAsFixed(0)}'),
            Slider(value: v, min: 0, max: 100, onChanged: (x) => setState(() => v = x)),
            const SizedBox(height: 10),
            Text('Range: ${rv.start.toStringAsFixed(0)} - ${rv.end.toStringAsFixed(0)}'),
            RangeSlider(values: rv, min: 0, max: 100, onChanged: (x) => setState(() => rv = x)),
          ],
        ),
      ),
    );
  }
}

class DropdownDemoScreen extends StatefulWidget {
  const DropdownDemoScreen({super.key});
  @override
  State<DropdownDemoScreen> createState() => _DropdownDemoScreenState();
}

class _DropdownDemoScreenState extends State<DropdownDemoScreen> {
  final items = const ['HCM', 'HN', 'DN'];
  String value = 'HCM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dropdown'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: DropdownButtonFormField<String>(
          value: value,
          items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: (v) => setState(() => value = v ?? value),
          decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Chọn thành phố'),
        ),
      ),
    );
  }
}
