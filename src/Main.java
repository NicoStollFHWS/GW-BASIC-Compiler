import java.io.FileInputStream;

public class Main {
    public static void main(String[] args) {
        if (args.length != 1) {
            System.out.println("Usage: java Main <source-file>");
            return;
        }

        try {
            FileInputStream in = new FileInputStream(args[0]);
            GWBasicParser parser = new GWBasicParser(in);
            SimpleNode root = parser.Program();
            GWBasicParser.dumpAST(root, 0);
            SyntaxChecker.checkSyntax(root, root);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static void generatePCL(SimpleNode root) {
    }

    

}

