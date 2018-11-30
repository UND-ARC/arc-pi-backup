import java.util.*;
public class Workspace {
	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);

		//calculate factorials
		int num = scn.nextInt();
		int result = 1;

		while (num != 0) {
			result *= num;
			num--;
		}
		System.out.println(result);
	}
}
