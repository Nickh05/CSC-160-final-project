package UserInterface;

import javax.swing.JFrame;

public class MyFrame extends JFrame {
    public MyFrame(){

        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setVisible(true);
        MyLabel label = new MyLabel();
        this.add(label);
        this.setSize(1200, 700);
        this.setResizable(false);
        this.setLocationRelativeTo(null);
        revalidate();
    }
}
