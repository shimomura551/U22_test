

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class testServlet
 */
@WebServlet("/testServlet")
public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public testServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());]
		import com.google.cloud.vision.v1.AnnotateImageRequest;
		import com.google.cloud.vision.v1.AnnotateImageResponse;
		import com.google.cloud.vision.v1.BatchAnnotateImagesResponse;
		import com.google.cloud.vision.v1.EntityAnnotation;
		import com.google.cloud.vision.v1.Feature;
		import com.google.cloud.vision.v1.Feature.Type;
		import com.google.cloud.vision.v1.Image;
		import com.google.cloud.vision.v1.ImageAnnotatorClient;
		import com.google.protobuf.ByteString;
		import java.nio.file.Files;
		import java.nio.file.Path;
		import java.nio.file.Paths;
		import java.util.ArrayList;
		import java.util.List;

		public class ImgDetect {
		    public static void main(String[] args) {
		        try {
		            //読み込み画像を指定
		            String inputImgPath = "{絶対パス}.jpeg";

		            //解析結果をテキストファイルで抽出
		            PrintStream outputResultPath = new PrintStream(new FileOutputStream("{絶対パス}/Result.txt"), true);

		            detectText(inputImgPath, outputResultPath);
		        }
		        catch (FileNotFoundException e) {
		            e.printStackTrace();
		            }
		        catch (Exception e) {
		            e.printStackTrace();
		            }
		    }

		    //サンプルコードより引用
		    public static void detectText(String filePath, PrintStream out) throws Exception, IOException {
		          List<AnnotateImageRequest> requests = new ArrayList<>();

		          ByteString imgBytes = ByteString.readFrom(new FileInputStream(filePath));

		          Image img = Image.newBuilder().setContent(imgBytes).build();
		          Feature feat = Feature.newBuilder().setType(Type.TEXT_DETECTION).build();
		          AnnotateImageRequest request =
		              AnnotateImageRequest.newBuilder().addFeatures(feat).setImage(img).build();
		          requests.add(request);

		          try (ImageAnnotatorClient client = ImageAnnotatorClient.create()) {
		            BatchAnnotateImagesResponse response = client.batchAnnotateImages(requests);
		            List<AnnotateImageResponse> responses = response.getResponsesList();

		            for (AnnotateImageResponse res : responses) {
		              if (res.hasError()) {
		                out.printf("Error: %s\n", res.getError().getMessage());
		                return;
		              }

		              // For full list of available annotations, see http://g.co/cloud/vision/docs
		              for (EntityAnnotation annotation : res.getTextAnnotationsList()) {
		                out.printf("Text: %s\n", annotation.getDescription());
		                out.printf("Position : %s\n", annotation.getBoundingPoly());
		              }
		            }
		          }
		        }
		    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
