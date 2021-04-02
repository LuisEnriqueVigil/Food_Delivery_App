
class Categoria { 

  final String nombre; 
  final String urlImage; 
  final int tag; 

  Categoria({
    this.nombre, 
    this.urlImage,
    this.tag
  });  

  static List<Categoria> categorias =[ 

    Categoria(
      nombre: 'Pizzas', 
      urlImage: 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c1e0.png',
      tag: 0
    ),
    Categoria(
      nombre: 'Sandiwch', 
      urlImage: 'https://www.puertopixel.com/wp-content/uploads/2016/12/imagen-de-hamburguesa-png.png',
      tag: 1

    ),
    Categoria( 
      nombre: 'Bebidas',
      urlImage: 'https://www.pngkit.com/png/full/446-4464891_bebidas-png.png',
      tag: 2

    ), 
    Categoria(
      nombre: 'Sushis', 
      urlImage: 'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1f9.png',
      tag: 3

    )
  ];
}

class Restaurant{

  final String nombre; 
  final String urlImage; 
  final bool disp; 
  final double precio1; 
  final double precio2; 

  Restaurant({
    this.nombre, 
    this.urlImage, 
    this.disp,
    this.precio1, 
    this.precio2,
  }); 

  static List<Restaurant> restaurantes =[ 

    Restaurant(
      urlImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Papa_John%27s_Logo_2019.svg/640px-Papa_John%27s_Logo_2019.svg.png',
      disp: true,
      nombre: "Papa Jhon's", 
      precio1: 25,
      precio2: 20
    ),
    Restaurant(
      urlImage: 'https://iconape.com/wp-content/png_logo_vector/dominos-logo.png',
      disp: false,
      nombre: "Domino's", 
      precio2: 10, 
      precio1: 15
    ), 
    Restaurant(
      urlImage: 'https://www.freepnglogos.com/uploads/pizza-hut-png-logo/pin-pizza-hut-logo-evolution-png-symbols-23.png',
      disp: true, 
      nombre: 'Pizza Hut', 
      precio1: 25,
      precio2: 30
    ),
  ];

}




//// usando [lista] de [mapas] para generar la informacion de manera mas dinamica

List< Map<String,String> > categorias = [ 

  {
    'nombre': 'Pizzas', 
    'urlimage': 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c1e0.png', 
  }, 
  {
    'nombre': 'Hamburguesas', 
    'urlimage': 'https://www.puertopixel.com/wp-content/uploads/2016/12/imagen-de-hamburguesa-png.png', 
  },
  {
    'nombre': 'Bebidas', 
    'urlimage': 'https://www.pngkit.com/png/full/446-4464891_bebidas-png.png', 
  },
  {
    'nombre': 'Sushis', 
    'urlimage': 'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1f9.png', 
  },
];

