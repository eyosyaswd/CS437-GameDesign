#include <iostream>

#include "Global.hpp"
#include "WinState.hpp"
#include "MenuState.hpp"
#include "GameState.hpp"


WinState::WinState(GameDataRef data) : gameData(data) {}

	void WinState::init()
	{
		this->gameData->resourceManager.loadTexture("WinState Background", WIN_STATE_BACKGROUND_FILEPATH);
    backgroundSprite.setTexture(this->gameData->resourceManager.getTexture("WinState Background"));


		this->gameData->resourceManager.loadFont("font", MAIN_FONT_FILEPATH);
        if (!victory_Theme.loadFromFile("../res/sounds/victoryTheme.wav"))
            std::cout << "Error occured while loading music " << std::endl;
        else {
            victoryTheme.setBuffer(victory_Theme);
            victoryTheme.play();
        }

    menu[0].setFont(this->gameData->resourceManager.getFont("font"));
    menu[0].setFillColor(sf::Color::Red);
    menu[0].setCharacterSize(70);
    menu[0].setString("Play Again");
    menu[0].setPosition(sf::Vector2f(WINDOW_WIDTH / 3,WINDOW_HEIGHT / (MAX_NUMBER_OF_ITEMS + 1) + 60));
    	//width/2.1
    menu[1].setFont(this->gameData->resourceManager.getFont("font"));
    menu[1].setFillColor(sf::Color::White);
    menu[1].setCharacterSize(70);
    menu[1].setString("Main Menu");
    menu[1].setPosition(sf::Vector2f(WINDOW_WIDTH / 3,WINDOW_HEIGHT / (MAX_NUMBER_OF_ITEMS + 1) + 140));

    menu[2].setFont(this->gameData->resourceManager.getFont("font"));
    menu[2].setFillColor(sf::Color::White);
    menu[2].setCharacterSize(70);
    menu[2].setString("Exit");
    menu[2].setPosition(sf::Vector2f(WINDOW_WIDTH / 3, WINDOW_HEIGHT / (MAX_NUMBER_OF_ITEMS + 1) + 220));

    selectedItem = 0;
	}

	void WinState::handleEvents()
	{
		sf::Event event;

    while (this->gameData->window.pollEvent(event))
		{

			if (sf::Event::Closed == event.type)
			{
				this->gameData->window.close();
			}
			if(event.type == sf::Event::KeyReleased)
			{
        switch (event.key.code)
        {
          case sf::Keyboard::Up:
          moveUp();
          break;

          case sf::Keyboard::Down:
          moveDown();
          break;

          case sf::Keyboard::Return:
          switch (getPressedItem() )
          {
            case 0:
            this->gameData->stateManager.pushState(StateRef(new GameState(gameData)), true);
            break;
            case 1:
            this -> gameData->stateManager.pushState(StateRef(new MenuState(gameData)), true);
            break;
            case 2:
            this->gameData->window.close();
            break;
          }

          break;
      	}
      	break;
			}
		}
	}

	void WinState::update(float dt)
	{

	}

	void WinState::draw(float dt)
	{
		this->gameData->window.clear(sf::Color::Black);

		this->gameData->window.draw(backgroundSprite);

    for (int i = 0; i < MAX_NUMBER_OF_ITEMS; i++)
    	{
    		this->gameData->window.draw(menu[i]);
    	}

		this->gameData->window.display();
	}

  void WinState::moveUp()
  {
	   if (selectedItem - 1 >= 0)
	    {
        menu[selectedItem].setFillColor(sf::Color::White);
		    selectedItem--;
        menu[selectedItem].setFillColor(sf::Color::Red);
      }
    }

    void WinState::moveDown()
    {
      if (selectedItem + 1 < MAX_NUMBER_OF_ITEMS)
      {
        menu[selectedItem].setFillColor(sf::Color::White);
        selectedItem++;
        menu[selectedItem].setFillColor(sf::Color::Red);
      }
    }