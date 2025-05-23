// data/widget_data.dart
import 'package:flutter_widgets_live/widgets/container_widget.dart';

import '../models/widget_model.dart';

final List<WidgetModel> widgetList = [
  WidgetModel(
      name: "Container",
      route: "container",
      builder: () => const ContainerDemo()),
  WidgetModel(
      name: "Text", route: "text", builder: () => const ContainerDemo()),
];
