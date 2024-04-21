using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;
    public GameState State;

   // public static event Action<GameState> OnGameStateChanged;

    public GameObject[] Captured = new GameObject[2];

    public GameObject Player;
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

        DontDestroyOnLoad(this);

    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    /************************************************************************************/

    /*public void UpdateGameState(GameState newState)
    {
        State = newState;

        switch(newState)
        {
            case GameState.MenuState:
                break;
            case GameState.PlayState:
                break;
            case GameState.PauseState:
                break;
            case GameState.DeathState:
                break;
            default: 
                throw new ArgumentOutOfRangeException(nameof(newState), newState, null);
        } 
    }*/

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