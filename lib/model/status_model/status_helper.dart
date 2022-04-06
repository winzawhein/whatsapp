import 'status_item_model.dart';

class StatusHelper{
  static var statusList=[
     StatusItemModel("Ko Ko", "3:00pm", "https://m.media-amazon.com/images/M/MV5BNzMzYmRiNGEtMDg5OC00OGZmLWFmNDktYzRlZTFkZmZiMjAzXkEyXkFqcGdeQXVyMTE2OTE2MzE1._V1_FMjpg_UX1000_.jpg"),
     StatusItemModel("Ko lo", "1:00pm", "https://m.media-amazon.com/images/M/MV5BNzMzYmRiNGEtMDg5OC00OGZmLWFmNDktYzRlZTFkZmZiMjAzXkEyXkFqcGdeQXVyMTE2OTE2MzE1._V1_FMjpg_UX1000_.jpg"),
     StatusItemModel("Ko no", "2:00pm", "https://m.media-amazon.com/images/M/MV5BNzMzYmRiNGEtMDg5OC00OGZmLWFmNDktYzRlZTFkZmZiMjAzXkEyXkFqcGdeQXVyMTE2OTE2MzE1._V1_FMjpg_UX1000_.jpg"),


  ];

  static StatusItemModel getStatusItem(int position){
    return statusList[position];
  }
  static var itemCount = statusList.length;
}