class UniqueID {

 private static final long LIMIT = 100000000L;
private static long last = 0;

public static long getID() {
  // 10 digits.
  long id = System.currentTimeMillis() % LIMIT;
  if ( id <= last ) {
    id = (last + 1) % LIMIT;
  }
  return last = id;
}
}


public class mainp{
    
    public static void main(String args[]) {
        
        UniqueID uid= new UniqueID();
        System.out.println(uid.getID());
        
    }
}
