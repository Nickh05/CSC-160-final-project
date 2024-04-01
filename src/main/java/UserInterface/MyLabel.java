package UserInterface;

import javax.swing.JLabel;
import java.awt.Color;
import javax.swing.border.Border;
import javax.swing.BorderFactory;
import java.awt.BasicStroke;

public class MyLabel extends JLabel{
    public MyLabel(){
        this.setBackground(Color.LIGHT_GRAY);
        Border border = BorderFactory.createLineBorder(Color.ORANGE, 5);
        this.setBorder(border);
        this.setOpaque(true);
        revalidate();
    }
}

