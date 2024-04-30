using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PauseMenu : MonoBehaviour
{
    [SerializeField] public GameObject pauseMenu;

    public void Pause()
    {
        pauseMenu.SetActive(true);
        GameManager.instance.UpdateGameState(GameState.PauseState);
        Time.timeScale = 0f;
    }

    public void UnPause()
    {
        pauseMenu.SetActive(false);
        GameManager.instance.UpdateGameState(GameState.PlayState);
        Time.timeScale = 1f;
    }

    public void Resume()
    {
        pauseMenu.SetActive(false);
        GameManager.instance.UpdateGameState(GameState.PlayState);
        Time.timeScale = 1f;
    }

    public void Home (int sceneID)
    {
        Time.timeScale = 1f;
        GameManager.instance.UpdateGameState(GameState.MenuState);
        SceneManager.LoadScene(sceneID);
    }
}
