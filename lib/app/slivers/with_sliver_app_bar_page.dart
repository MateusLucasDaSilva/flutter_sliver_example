import 'package:flutter/material.dart';

class WithSliverAppBarPage extends StatelessWidget {
  const WithSliverAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            //expande a AppBar
            // expandedHeight: MediaQuery.of(context).size.height * .4,
            expandedHeight: 400,
            // não permite que a appBar se esconda complemente
            pinned: true,
            // estabelece um tamanho mínimo para a appBar (por padrão é 50, não pode ser menor! )
            collapsedHeight: null,
            // juntos criam uma pequena animação no título
            floating: true,
            snap: true,
            // estica a appBar de acordo com a rolagem
            stretch: true,
            //distancia o título do topo
            toolbarHeight: 200,
            title: Text('Sliver appBar'),
            centerTitle: true,

            // actions: [
            //   IconButton(
            //       onPressed: () {},
            //       icon: const Icon(Icons.horizontal_split_sharp))
            // ],
            // bottom: const TabBar(tabs: [
            //   Tab(
            //       child: Icon(
            //     Icons.home,
            //     color: Colors.white,
            //   )),
            //   Tab(
            //       child: Icon(
            //     Icons.settings,
            //     color: Colors.white,
            //   )),
            //   Tab(
            //       child: Icon(
            //     Icons.person,
            //     color: Colors.white,
            //   )),
            // ]),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: List<Widget>.generate(
                10,
                (index) => Container(
                  height: 100,
                  color: Colors.amber[index * 100],
                  child: Center(child: Text('#$index')),
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
