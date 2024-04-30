using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;
    public GameState State;

    public static event Action<GameState> OnGameStateChanged;

    public GameObject[] Captured = new GameObject[2];

    public GameObject Player;

    public PauseMenu PauseMenuScript;

    public bool isDebug;
    void Awake()
    {
        if(instance)
        {
            Destroy(gameObject);
        }
        else
        {
            instance = this;
        }
        if(Player == null)
        {
            Player = GameObject.FindWithTag("Player");
        }
        DontDestroyOnLoad(this);

    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        switch(State)
        {
            case GameState.MenuState:
                break;
            case GameState.PlayState:
                 if(Input.GetKeyDown(KeyCode.Escape))
                 {
                    PauseMenuScript.Pause();
                 }
                break;
            case GameState.PauseState:
                if(Input.GetKeyDown(KeyCode.Escape))
                {
                    PauseMenuScript.UnPause();
                }
                break;
            case GameState.DeathState:
                break;
            default:
                //throw new ArgumentOutOfRangeException(nameof(newState), newState, null);
                break;
        } 
    }
    

    /************************************************************************************/

    public void UpdateGameState(GameState newState)
    {
        State = newState;

        OnGameStateChanged?.Invoke(newState);
    }

    public void updateCapturedCreature(GameObject gObject)
    {
        if (Captured[0] == null)
        {
            Captured[0] = gObject;
        }
        else if(Captured[1] == null)
        {
            Captured[1] = gObject;
        }
    }

    public GameObject takeOutCaptured(int CapturedIndex)
    {
        return Captured[CapturedIndex];
    }


}

public enum GameState
{
    MenuState,
    PlayState,
    PauseState,
    DeathState
}

public enum CreatureType
{
    Fire,
    Rock,
    Water

}