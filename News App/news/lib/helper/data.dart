 
 
 import 'package:news/model/category_model.dart';

List<CategoryModel> getCategories (){
    List<CategoryModel> category = new List<CategoryModel>();
      CategoryModel categoryModel = new CategoryModel();

      //1
      categoryModel.categoryName = "Business";
      categoryModel.imageUrl = "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
      category.add(categoryModel);

      categoryModel= new CategoryModel();
      //2 
      categoryModel.categoryName = "Entertainment";
      categoryModel.imageUrl = "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
      category.add(categoryModel);

      categoryModel= new CategoryModel();

      //3
      categoryModel.categoryName = "General";
      categoryModel.imageUrl = "https://images.unsplash.com/photo-1557822477-ec8d8bbbcd2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
      category.add(categoryModel);

      categoryModel= new CategoryModel();

      //4
      categoryModel.categoryName = "Health";
      categoryModel.imageUrl = "https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80";
      category.add(categoryModel);

     
      categoryModel= new CategoryModel();

      //5
      categoryModel.categoryName = "Science";
      categoryModel.imageUrl = "https://images.unsplash.com/photo-1517976487492-5750f3195933?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80";
      category.add(categoryModel);

 
      categoryModel= new CategoryModel();

      //6
      categoryModel.categoryName = "Sports";
      categoryModel.imageUrl = "https://images.unsplash.com/photo-1552667466-07770ae110d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
      category.add(categoryModel);

     
      categoryModel= new CategoryModel();

      //7

      categoryModel.categoryName = "Technology";
      categoryModel.imageUrl = "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MzYxfQ&auto=format&fit=crop&w=750&q=80";
      category.add(categoryModel);

      categoryModel= new CategoryModel();

      return category;
 }