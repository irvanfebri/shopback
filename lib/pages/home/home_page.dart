
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/common/values/colors.dart';
import 'package:flutter_shop/pages/home/bloc/home_pages_blocs.dart';
import 'package:flutter_shop/pages/home/bloc/home_pages_states.dart';
import 'package:flutter_shop/pages/home/widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BlocBuilder<HomePageBlocs, HomePageStates>(builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 25.w,
                ),
                sliver: SliverToBoxAdapter(
                    child: homePageText("Hello,",color: AppColors.primaryThreeElementText,top:20)
                )
            ),
            SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 25.w,
                ),
                sliver: SliverToBoxAdapter(
                  child: homePageText("Dbestech",color: AppColors.primaryText,top:5),
                )
            ),
            SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 25.w,
                ),
                sliver: SliverToBoxAdapter(
                  child: searchView(),
                )
            ),
            SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 25.w,
                ),
                sliver: SliverToBoxAdapter(
                  child: sliderView(context,state),
                )
            ),
            SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 25.w,
                ),
                sliver: SliverToBoxAdapter(
                    child: menuView(context,state)
                )
            ),
            SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 18.h,
                  horizontal: 25.w,
                ),
                sliver: SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1.6,
                    ),
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return gridView();
                      },
                      childCount: 6,
                    ))),

          ],
        );
      }),
    );
  }
  }