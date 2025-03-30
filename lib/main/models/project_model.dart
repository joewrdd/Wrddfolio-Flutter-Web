import 'package:wrddfolio_flutter/utils/constants/images.dart';

class Project {
  final String title;
  final String description;
  final String image;
  final String link;
  final List<TechStack> technologies;

  Project({
    required this.title,
    required this.description,
    required this.image,
    required this.link,
    required this.technologies,
  });

  static List<Project> projects = [
    Project(
      title: 'Kirito Wallet',
      description:
          'A Web3-themed wallet where users can create a portfolio wallet, track live cryptocurrency price changes, stay updated with live cryptocurrency news, and search for any cryptocurrency they admire—all within a fun, pixelated interface using Flutter. Users can also play a PVP XO game and place bets using their credit. Crypto news is fetched from CoinGeckoNews API.',
      image: ConstantImages.projectKirito,
      link: "https://youtube.com/shorts/AlmUSEHlNxs?si=x8CIEV-34P-Zx5wW",
      technologies: [
        TechStack(
          name: 'Flutter',
          image: ConstantImages.myStackFlutter,
          width: 15,
          height: 15,
        ),
        TechStack(
          name: 'Dart',
          image: ConstantImages.myStackDart,
          width: 12,
          height: 12,
        ),
        TechStack(
          name: 'CoinGeckoNews',
          image: ConstantImages.myStackCoinGecko,
          width: 15,
          height: 15,
        ),
        TechStack(
          name: 'Web3API',
          image: ConstantImages.myStackWeb3,
          width: 48,
          height: 52,
        ),
      ],
    ),
    Project(
      title: 'JukyoMall MS',
      description:
          'A modern and feature-rich e-commerce mobile application built with Flutter and Firebase, offering a seamless shopping experience with robust user management and product handling capabilities. Users can browse products, add them to their cart, and place orders. Admins (Coming Soon) can manage products, orders, and users, and view sales analytics.',
      image: ConstantImages.projectJukyoMall,
      link: 'https://youtube.com/shorts/kTMkjgB8FL8?',
      technologies: [
        TechStack(
          name: 'Flutter',
          image: ConstantImages.myStackFlutter,
          width: 15,
          height: 15,
        ),
        TechStack(
          name: 'Dart',
          image: ConstantImages.myStackDart,
          width: 12,
          height: 12,
        ),
        TechStack(
          name: 'Firebase',
          image: ConstantImages.myStackFirebase,
          width: 12,
          height: 12,
        ),
      ],
    ),
    Project(
      title: 'OtakuWrdd',
      description:
          'OtakuWrdd an anime and manga tracking application built with Flutter and Firebase, offering users a seamless experience to discover, track, and manage their anime and manga collections. All data is fetched by Anime & Manga specific APIs, and users can also search for any anime or manga they want by just a click of a button. Otaku Wrdd -_-',
      image: ConstantImages.projectOtakuWrdd,
      link: 'https://www.youtube.com/watch?v=Kxwv9YltdiU',
      technologies: [
        TechStack(
          name: 'Flutter',
          image: ConstantImages.myStackFlutter,
          width: 15,
          height: 15,
        ),
        TechStack(
          name: 'Dart',
          image: ConstantImages.myStackDart,
          width: 12,
          height: 12,
        ),
        TechStack(
          name: 'Firebase',
          image: ConstantImages.myStackFirebase,
          width: 12,
          height: 12,
        ),
      ],
    ),
    Project(
      title: 'Riwaya',
      description:
          'Riwaya is a modern coffee shop mobile app built with Flutter that offers a seamless ordering experience. The app features an elegant UI with curved animations, intuitive product browsing across categories, detailed customization options, and a smooth checkout process. Users can earn & collect points which result in earning rewards, all while enjoying a premium coffee-ordering experience.',
      image: ConstantImages.projectRiwaya,
      link: 'https://youtube.com/shorts/jx3vP4s0-Ew?si=DKR8xHz8_3r9g8rA',
      technologies: [
        TechStack(
          name: 'Flutter',
          image: ConstantImages.myStackFlutter,
          width: 15,
          height: 15,
        ),
        TechStack(
          name: 'Dart',
          image: ConstantImages.myStackDart,
          width: 12,
          height: 12,
        ),
        TechStack(
          name: 'Firebase',
          image: ConstantImages.myStackFirebase,
          width: 12,
          height: 12,
        ),
      ],
    ),
    Project(
      title: 'HyperCar Club',
      description:
          'A Hypercar Showcase Club where users can browse hypercars and manufacturers, view individual car details such as speed, price, horsepower, and fuel type, and add or remove cars from their favorites. Includes a live chat box where car enthusiasts can connect and discuss cars. Users can also take on a challenging quiz to test their knowledge of hypercars.',
      image: ConstantImages.projectHyperCar,
      link: 'https://youtube.com/shorts/uiFwAOrMZWg?si=3Ab-B0AxqnkBaFxZ',
      technologies: [
        TechStack(
          name: 'Flutter',
          image: ConstantImages.myStackFlutter,
          width: 15,
          height: 15,
        ),
        TechStack(
          name: 'Dart',
          image: ConstantImages.myStackDart,
          width: 12,
          height: 12,
        ),
        TechStack(
          name: 'Firebase',
          image: ConstantImages.myStackFirebase,
          width: 12,
          height: 12,
        ),
      ],
    ),
    Project(
      title: 'Wrdd Wallet',
      description:
          'A Web3-themed wallet that allows users to create and import wallets using a seed phrase, secured with the Moralis API. Features a beautifully themed UI built with Flutter. Section for NFTs, Tokens, Crypto, Wallet Balance, and Transaction History. Web3 is the future of the world and this wallet app is the best way to start my journey in the Web3 world.',
      image: ConstantImages.projectWrddWallet,
      link: 'https://youtube.com/shorts/2Aa40WlWTU8?si=u5ot-gJwZd7LVK5Q"',
      technologies: [
        TechStack(
          name: 'Flutter',
          image: ConstantImages.myStackFlutter,
          width: 15,
          height: 15,
        ),
        TechStack(
          name: 'Dart',
          image: ConstantImages.myStackDart,
          width: 12,
          height: 12,
        ),
        TechStack(
          name: 'Moralis',
          image: ConstantImages.myStackMoralis,
          width: 55,
          height: 55,
        ),
        TechStack(
          name: 'Web3API',
          image: ConstantImages.myStackWeb3,
          width: 48,
          height: 52,
        ),
      ],
    ),
    Project(
      title: 'AI Buddy',
      description:
          'An AI-powered buddy using Gemini AI, where users can chat with the bot about various topics, similar to ChatGPT. Additionally, users can upload images and PDFs for summarization and explanation. For users to login, they need to provide a private Gemini API Key that can be provided from their official website when you sign up for a free account.',
      image: ConstantImages.projectAIBuddy,
      link: 'https://youtube.com/shorts/IUnKFGLb22E?si=6tBCe5Nf43w3p9Hb',
      technologies: [
        TechStack(
          name: 'Flutter',
          image: ConstantImages.myStackFlutter,
          width: 15,
          height: 15,
        ),
        TechStack(
          name: 'Dart',
          image: ConstantImages.myStackDart,
          width: 12,
          height: 12,
        ),
        TechStack(
          name: 'Gemini',
          image: ConstantImages.myStackGemini,
          width: 12,
          height: 12,
        ),
        TechStack(
          name: 'Hive',
          image: ConstantImages.myStackHive,
          width: 18,
          height: 18,
        ),
      ],
    ),
  ];
}

class TechStack {
  final String name;
  final String image;
  final double width;
  final double height;

  TechStack({
    required this.name,
    required this.image,
    this.width = 50,
    this.height = 50,
  });
}

List<TechStack> techStack = [
  TechStack(
    name: 'Flutter',
    image: ConstantImages.myStackFlutter,
    width: 55,
    height: 55,
  ),
  TechStack(
    name: 'Dart',
    image: ConstantImages.myStackDart,
    width: 50,
    height: 50,
  ),
  TechStack(
    name: 'CoinGeckoNews',
    image: ConstantImages.myStackCoinGecko,
    width: 60,
    height: 45,
  ),
  TechStack(
    name: 'Web3API',
    image: ConstantImages.myStackWeb3,
    width: 48,
    height: 52,
  ),
  TechStack(
    name: 'Hive',
    image: ConstantImages.myStackHive,
    width: 52,
    height: 52,
  ),
  TechStack(
    name: 'Gemini',
    image: ConstantImages.myStackGemini,
    width: 58,
    height: 50,
  ),
  TechStack(
    name: 'Firebase',
    image: ConstantImages.myStackFirebase,
    width: 45,
    height: 55,
  ),
  TechStack(
    name: 'MyAniList',
    image: ConstantImages.myStackmyAniList,
    width: 55,
    height: 50,
  ),
];
