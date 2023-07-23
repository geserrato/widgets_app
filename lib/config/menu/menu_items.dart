import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estelizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y dialogos',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
      title: 'Animated container',
      subtitle: 'Staful widget animado',
      link: '/animated',
      icon: Icons.animation),
  MenuItem(
      title: 'UI Controls',
      subtitle: 'UI controles',
      link: '/ui-controls',
      icon: Icons.car_repair),
  MenuItem(
      title: 'Introducción a Aplicación',
      subtitle: 'Tutorial',
      link: '/app_tutorial',
      icon: Icons.accessibility_new_rounded),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subtitle: 'Scroll infinito',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Conter',
      subtitle: 'Contador',
      link: '/counter',
      icon: Icons.plus_one_outlined),
  MenuItem(
      title: 'Cambiar tema',
      subtitle: 'cambiar tema de la aplicación',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
