import 'package:first_module_project/stateful_class.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: Stateful())
);

class PhoneDetail extends StatelessWidget {
  const PhoneDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      ProductTitle(),
                      ProductSubtitle(),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      ColorsTitle(),
                      ColorSquare(color: Colors.white,),
                      ColorSquare(color: Colors.black,),
                      ColorSquare(color: Colors.blue,),
                      ColorSquare(color: Colors.orange,),
                    ],
                  ),
                  const ProductMainImage(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('100'),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Купить'),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SliderImage(path: 'assets/images/phone_2.jpg'),
                  SliderImage(path: 'assets/images/phone_3.jpg'),
                  SliderImage(path: 'assets/images/phone_4.jpg'),
                  SliderImage(path: 'assets/images/phone_5.jpg'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const CharacteristicHeader(title: 'О товаре', subtitle: 'Полное описание'),
              const SizedBox(
                height: 10,
              ),
              const ProductDescription(),
              const SizedBox(
                height: 20,
              ),
              const CharacteristicHeader(title: 'Характеристики', subtitle: 'Все характеристики'),
              const TitleMd(name: 'Экран',),
              const Characteristic(name: 'Диагональ экрана', value: '5.1',),
              const Characteristic(name: 'Разрешение экрана', value: '2560х1440',),
              const TitleMd(name: 'Технологии',),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Технологии',
                      style: textStyle,
                    ),
                    Text(
                      'Акселерометр, Барометр\nГироскоп, Датчик\n'
                      'освещения, Датчик\nприближения, Датчик\n'
                      'Холла, Компас, Сканер\n отпечатка пальцев',
                      style: textStyle,
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
              ),
              const Characteristic(name: 'Размеры', value: '143 х 70.5 х 6.8мм',),
            ],
          ),
        ),
      ),
    );
  }
}

// Widgets

class ProductSubtitle extends StatelessWidget {
  const ProductSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'sm-a225fzkdsek'.toUpperCase(),
      style: const TextStyle(
        color: Colors.grey
      ),
    );
  }
}

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Samsung G920F Galaxy S6',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    );
  }
}

class ProductMainImage extends StatelessWidget {
  const ProductMainImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/phone_1.jpg',
      height: 170,
    );
  }
}

class ColorsTitle extends StatelessWidget {
  const ColorsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Цвет',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 14
      ),
    );
  }
}

class ColorSquare extends StatelessWidget {
  const ColorSquare({
    Key? key, required color
  }) : _color = color, super(key: key);

  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        color: _color,
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(
          child: Text('Новый флагман, как и положено, получился солидным, стильным и очень мощным.'
          'Это одна из тех моделей, которые приобретаются не только из жедания быть всегда на связи или'
          'различных функциональных возможностей, для изучения которых определенно стоит выделить время.',
            style: TextStyle(color: Colors.black, fontSize: 14),
          )
        ),
      ],
    );
  }
}

class CharacteristicHeader extends StatelessWidget {
  const CharacteristicHeader({
    Key? key,
    required title, required subtitle,
  }) : _title = title, _subtitle = subtitle, super(key: key);

  final String _title;
  final String _subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide( width: 1, color: Colors.black)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            _title,
            style: textStyleLg,
          ),
          Text(
            _subtitle,
            style: styledText
          ),
        ],
      ),
    );
  }
}

class Characteristic extends StatelessWidget {
  const Characteristic({
    Key? key,
    required name, required value,
  }) : _name = name, _value = value, super(key: key);

  final String _name;
  final String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _name,
            style: textStyle,
          ),
          Text(
            _value,
            style: textStyle
          )
        ],
      ),
    );
  }
}

class SliderImage extends StatelessWidget {
  const SliderImage({
    Key? key,
    required String path,
  }) : _path = path, super(key: key);

  final String _path;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(_path),
      height: 120,
    );
  }
}

class TitleMd extends StatelessWidget {
  const TitleMd({
    Key? key,
    required String name,
  }) : _name = name, super(key: key);

  final String _name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Text(
            _name,
            style: textStyleMd,
          ),
        ],
      ),
    );
  }
}

// Styles

const TextStyle textStyle = TextStyle(
  color: Colors.black,
  fontSize: 14
);

const TextStyle textStyleMd = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.bold
);

const TextStyle textStyleLg = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold
);

const TextStyle styledText = TextStyle(
  fontStyle: FontStyle.italic,
  color: Colors.cyan,
  fontSize: 14,
);
