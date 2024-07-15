import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                Icons.local_atm,
                color: Colors.greenAccent,
                size: 35,
              ),
              SizedBox(width: 10),
              Text(
                'Tu Logo',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Divider(endIndent: 10, indent: 10),
        SideMenuButtom(icon: Icons.people, title: 'Clientes', widthSel: 3),
        SideMenuButtom(
            icon: Icons.account_balance_wallet, title: 'Cuentas', widthSel: 0),
        SideMenuButtom(
            icon: Icons.monetization_on, title: 'Préstamos', widthSel: 0),
        SideMenuButtom(icon: Icons.insert_chart, title: 'Reportes', widthSel: 0),
        SideMenuButtom(icon: Icons.settings, title: 'Configuración', widthSel: 0)
            
      ],
    );
  }
}

class SideMenuButtom extends StatelessWidget {
  final IconData icon;
  final String title;
  final double widthSel;
  const SideMenuButtom({
    super.key,
    required this.icon,
    required this.title,
    required this.widthSel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        hoverColor: Colors.green.withOpacity(0.1),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Ink(
                decoration: const BoxDecoration(),
                child: SizedBox(
                  width: 200,
                  child: Wrap(
                      runAlignment: WrapAlignment.start,
                      alignment: MediaQuery.of(context).size.width <= 756? WrapAlignment.center: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        AnimatedContainer(
                          width: widthSel,
                          height: 30,
                          decoration:
                              const BoxDecoration(color: Colors.greenAccent),
                          duration: const Duration(milliseconds: 300),
                        ),
                        const SizedBox(width: 10),
                        Icon(icon),
                        const SizedBox(width: 10),
                        Text(title)
                      ]),
                )),
          )),
    );
  }
}
