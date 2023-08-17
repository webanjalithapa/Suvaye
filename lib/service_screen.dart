import 'package:flutter/material.dart';
import 'package:suvaye/service_model.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  final List<ServiceModel> _services = [
    ServiceModel(
      name: "App Development",
      desc: "Develop beautiful fast mobile applications",
    ),
    ServiceModel(
      name: "Website Development",
      desc: "Develop beautiful fast website applications",
    ),
    ServiceModel(
      name: "Design Development",
      desc: "Develop beautiful designs",
    ),
  ];
  final PageController _pageViewController = PageController(initialPage: 0);
  int _activePage = 0;
  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "assets/icons/logo.png",
              fit: BoxFit.contain,
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              "Suvaye",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/notification.png",
                  height: 21,
                  fit: BoxFit.contain,
                ),
              ),
              const Positioned(
                top: 12,
                right: 14,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 4,
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, Suvaye Tech",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Services",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                            color: Color(0xFF027A4B),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color(0xFF027A4B),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 128,
                child: PageView.builder(
                  controller: _pageViewController,
                  itemCount: _services.length,
                  onPageChanged: (int index) {
                    setState(() {
                      _activePage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFECFDF3),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 24,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _services[index].name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            _services[index].desc,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _services.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: InkWell(
                      onTap: () {
                        _pageViewController.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: _activePage == index
                            ? const Color(0xFF98A2B3)
                            : const Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Outline",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                            color: Color(0xFF027A4B),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color(0xFF027A4B),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 24,
                  childAspectRatio: 326 / 110,
                  children: [
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFF9F5FF),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/app_icon.png",
                            height: 21,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Apps",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFFDF2FA),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/website_icon.png",
                            height: 21,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Websites",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFFFFAF5),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/design_icon.png",
                            height: 21,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Designs",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFF0F9FF),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/consultant_icon.png",
                            height: 21,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Consultant",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(
                  0.062,
                ),
                offset: const Offset(0, -1.5),
                blurRadius: 3,
              ),
            ],
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ImageIcon(
                    AssetImage("assets/icons/cal_icon.png"),
                    color: Color(0xFF475467),
                    size: 24,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Today",
                    style: TextStyle(
                      color: Color(0xFF475467),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ImageIcon(
                    AssetImage("assets/icons/services_icon.png"),
                    color: Color(0xFF6941c6),
                    size: 24,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Services",
                    style: TextStyle(
                      color: Color(0xFF6941c6),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ImageIcon(
                    AssetImage("assets/icons/chat_icon.png"),
                    color: Color(0xFF475467),
                    size: 24,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Chat",
                    style: TextStyle(
                      color: Color(0xFF475467),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
