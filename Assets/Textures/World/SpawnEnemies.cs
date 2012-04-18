using UnityEngine;
using System.Collections.Generic;

public class SpawnEnemies : MonoBehaviour {
	
	public Transform Enemy1;
	public Transform Enemy2;
	public Transform Enemy3;
	
	public int NumColumns;
	public int Enemy1Rows;
	public int Enemy2Rows;
	public int Enemy3Rows;
	
	public float FormationBottom;
	public float RowSpacing;
	public float ColumnSpacing;
	
	public float CutoffDistance;
	
	float timer;
	

	List<Transform> enemies;
	
	// Use this for initialization
	void Start () {
		timer = Time.time;
		Spawn();
	}
	
	void Spawn () {
		
		enemies = new List<Transform>();
		
		for (int z = 0; z < Enemy1Rows; z++)
			FillRow(RowSpacing * z + FormationBottom, Enemy1);
		for (int z = Enemy1Rows; z < Enemy1Rows+Enemy2Rows; z++)
			FillRow(RowSpacing * z + FormationBottom, Enemy2);
		for (int z = Enemy1Rows+Enemy2Rows; z < Enemy1Rows+Enemy2Rows+Enemy3Rows; z++)
			FillRow(RowSpacing * z + FormationBottom, Enemy3);
	}
			
	void FillRow(float zPos, Transform EnemyType){
		float offset = -NumColumns/2 * ColumnSpacing;	
		for (int x = 0; x < NumColumns; x++)
		{
			float xPos = offset + x * ColumnSpacing;
			Vector3 pos = new Vector3(xPos, 0.0f, zPos);
			enemies.Add(Instantiate(EnemyType, pos, Quaternion.identity) as Transform);
		}
	}
	
	void CheckRespawn () {
		bool stillLive = false;
		foreach (var enemy in enemies) {
			if (enemy != null) {
				if (enemy.position.z > CutoffDistance){
					stillLive = true;
					break;
				}
				else
				{
					Destroy(enemy.gameObject);
				}
			}
		}
		
		if (!stillLive)
		{			
			Spawn();
		}
		
		
	}
	
	// Update is called once per frame
	
	void Update () {
		if (Time.time - timer > 0.5) {
			CheckRespawn();
			timer = Time.time;
		}
	}
}
