void main() {
  print(que3("nitin"));
  print(que2("hello hOW Are You"));
  print(que1("hello hOW Are You"));
  print(checkUnique([1, 2, 3, 4, 5, 6, 1, 8, 9, 10]));  
  print(checkMissing([1, 2, 19, 4, 5], 5));
  print(checkAnagram("listen", "silent"));
}

bool? que3(String str) {
  int i = 0;
  int j = str.length - 1;
  while (i <= j) {
    if (str[i] != str[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}


int? que2(String str) {
  List<String>? list = str.split(" ");
  return list.length;
}

String? que1(String? str) {
  String? s = str?.toLowerCase();
  List<String>? list = s?.split(" ");
  for (int i = 0; i < ((list?.length) ?? 0); i++) {
    list![i] = list[i][0].toUpperCase() + list[i].substring(1);
  }
  String? result = "";
  for (int i = 0; i < ((list?.length) ?? 0); i++) {
    result = result! + list![i] + " ";
  }
  return result;
}

bool? checkUnique(List<int> list) {
  List<int> ansList = [list[0]];
  for (int i = 1; i < list.length; i++) {
    if (ansList.contains(list[i])) {
      return false;
    } else {
      ansList.add(list[i]);
    }
  }
  return true;
}

int? checkMissing(List<int> list, int n) {
  int count = 1;
  while (count <= n) {
    if (!list.contains(count)) {
      return count;
    }
    count++;
  }
  return -1;  
}


bool? checkAnagram(String a, String b) {
  for (int i = 0; i < b.length; i++) {
    if (a.contains(b[i])) {
      a = a.replaceFirst(b[i], "");
    }
    else {
      return false;
    }
  }
  if (a.length <= 0) {
    return true;
  }
  return false;
}

