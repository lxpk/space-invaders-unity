using UnityEngine;
using System.Collections;

public class GameOver : MonoBehaviour {

	public Transform PlayerClass;
    public float PlayerZ;
    public int Lives;

    Transform playerObject;


    void SpawnPlayer()
    {
        playerObject = Instantiate(PlayerClass, new Vector3(0.0f, 0.0f, PlayerZ), Quaternion.identity) as Transform;
    }

	// Use this for initialization
	void Start () {
        SpawnPlayer();
	}
	
	// Update is called once per frame
	void Update () {
        gameObject.GetComponent<GUIText>().text = "Lives: " + Lives;

        if (playerObject == null)
		{
            if (Lives > 0)
            {
                Lives--;
                SpawnPlayer();
            }
            else
            {
                PointsSingleton.Instance.SaveScore();
                enableUI = true;
            }
		}
	}
	
	Rect WindowRect(float left, float top, float width, float height){
		return new Rect(left * Screen.width, top * Screen.height, width * Screen.width, height * Screen.height);
	}
	
	bool enableUI = false;
	void OnGUI (){
		
		if (enableUI == true){
			int score = PointsSingleton.Instance.Points;
			if (GUI.Button(WindowRect (0.3f, 0.2f, 0.4f, 0.3f), "Game Over!\nYou Scored: "+score)){
				Application.LoadLevel("menu");
			}
		}
	}

}
