class Sort
{
  static List<int> sortList(List<int> list,bool is_up)
  {
    for(var i=1;i<list.length;i++)
      {
        for(var j = i;j>0;j--)
          {
            if(is_up)
            {
              if(list[j]<list[j-1])
              {
                var temp = list[j];
                list[j] = list[j-1];
                list[j-1] = temp;
              }
              else
                {
                  break;
                }
            }
            else
            {
              if(list[j]>list[j-1])
              {
                var temp = list[j];
                list[j] = list[j-1];
                list[j-1] = temp;
              }
              else
              {
                break;
              }
            }
          }
      }
    return list;
  }
}