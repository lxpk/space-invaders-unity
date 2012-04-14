using UnityEngine;
using System.Collections;


public class PointsSingleton
{
	private static PointsSingleton instance;
	private PointsSingleton(){}
	public static PointsSingleton Instance
	{
		get
		{
			if (instance == null)
				instance = new PointsSingleton();
			return instance;
		}
	}
	private int points;
	public int Points
	{
		get{ return points; }
	}
	public void ScorePoints(int amount)
	{
		points += amount;
	}
}


public class PointsCounter : MonoBehaviour {
	
	static int lastPoints = 0;
	
	// Use this for initialization
	void Start () {
		UpdateScore(0);
	}
	
	// Update is called once per frame
	void Update () {
		if (lastPoints != PointsSingleton.Instance.Points)
			UpdateScore(PointsSingleton.Instance.Points);
	}
	
	void UpdateScore(int amount)
	{		
		var text = gameObject.GetComponent("GUIText") as GUIText;
		text.text = amount.ToString();
	}
}
