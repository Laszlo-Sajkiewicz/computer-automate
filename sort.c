
public class SortFileByCreationDate

{
  public static List<FileInfo> Sort(string path, string filter) 
  {
    FileInfo[] fi = new DirectoryInfo(path).GetFiles(filter); 
    List<FileInfo> fis = new List<FileInfo>();
    foreach (FileInfo file in fi) fis.Add(file); 
    fis.Sort(new CreationDateComparer());
    return fis; 
  }

  private class CreationDateComparer : IComparer<FileInfo> 
  {
    public int Compare(FileInfo f1, FileInfo f2) 
    {
      return DateTime.Compare(f1.LastWriteTime, f2.LastWriteTime); 
    }

  }
}

List<FileInfo> fileSorted = SortFileByCreationDate.Sort(@"C:\WINDOWS\system", "*.*");
