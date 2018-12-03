/**
	* Filename: GameState2.cpp
**/

#include "GameState2.hpp"



GameState2::GameState2(GameDataRef data) : gameData(data) {}


void GameState2::init() {
	// load background
  this->gameData->resourceManager.loadTexture("GameState2 Background", GAME_STATE2_BACKGROUND_FILEPATH);
  backgroundSprite.setTexture(this->gameData->resourceManager.getTexture("GameState2 Background"));
  
    
    //draws shot count in bottom left
    shotcountstring = "";
    shotcount.setFont(this->gameData->resourceManager.getFont("font"));
    shotcount.setFillColor(sf::Color::White);
    shotcount.setCharacterSize(70);
    shotcount.setString(shotcountstring);
    shotcount.setPosition(150, WINDOW_HEIGHT-100);
    
    shield.setRadius(50);
    shield.setPosition(-400,-400);
    shieldfollow = false;
    backbool = false;


  //TODO: uncomment music later, only turned it off for testing
    // if (!play_Theme.loadFromFile("../res/sounds/wave2.wav"))
    //     std::cout << "Error occured while loading music " << std::endl;
    // else {
    //     playTheme.setBuffer(play_Theme);
    //     playTheme.setLoop(true);
    //     playTheme.play();
    // }

	// initialize player, bullet, and enemies
  spaceship = new Player(gameData);
  bullet = new Bullet(gameData);
  backbullet = new Bullet(gameData);
  goombaSpawnTimer = 0;

  // sets up weapon toggle
  std::string weapontoggle = "selectsecondary";
  defaultWeapon.setRadius(24);
  defaultWeapon.setPosition(50, 750);
  secondaryWeapon.setRadius(12);
  secondaryWeapon.setPosition(100, 750);

	// loads lives
  this->gameData->resourceManager.loadTexture("heart", "../res/images/heart.png"); //having trouble getting it to recognize HEART_PATH in global, help would be great
  heart1.setTexture(this->gameData->resourceManager.getTexture("heart"));
  heart1.setPosition(20,50);
  heart1.setScale(sf::Vector2f(0.1f, 0.1f));
  heart2.setTexture(this->gameData->resourceManager.getTexture("heart"));
  heart2.setPosition(70,50);
  heart2.setScale(sf::Vector2f(0.1f, 0.1f));
  heart3.setTexture(this->gameData->resourceManager.getTexture("heart"));
  heart3.setPosition(120,50);
  heart3.setScale(sf::Vector2f(0.1f, 0.1f));

  // loads powerups
  powerup.setRadius(30);
  powerup.setOutlineThickness(10);
  powerup.setOutlineColor(sf::Color::White);
  powerup.setPosition(1500,1500);
  piercing = false;
}


void GameState2::handleEvents() {
	sf::Event event;

	/* process events */
	while (this->gameData->window.pollEvent(event)) {

		// close event
		if (sf::Event::Closed == event.type) {
			this->gameData->window.close();
		}

		//different weapon toggle system, switches between bullets, active bullet displays larger, need to calibrate sizes still
		if(event.type == sf::Event::MouseWheelMoved){
    	if(weapontoggle == "selectsecondary"){
	      defaultWeapon.setRadius(12);
	      secondaryWeapon.setRadius(24);
	      secondaryWeapon.setPosition(80,750);
	      weapontoggle = "selectprimary";
      }
      else{
	      defaultWeapon.setRadius(24);
	      secondaryWeapon.setRadius(12);
	      secondaryWeapon.setPosition(100, 750);
	      weapontoggle = "selectsecondary";
      }
		}

	}

  /* proccess key inputs */
	// "Space" key pressed (pauses game)
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::Space)) {
		this->gameData->stateManager.pushState(StateRef(new PauseState(gameData)), false);
	}

	// "Esc" key pressed (closes game)
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::Escape)) {
		this->gameData->window.close();
	}

	// "Up" and "Down" keys pressed (moves player up and down)
	
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down) || sf::Keyboard::isKeyPressed(sf::Keyboard::S)) {
		spaceship->moveDown();
  }
	else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up)|| sf::Keyboard::isKeyPressed(sf::Keyboard::W)) {
    spaceship->moveUp();

	}

	// "Left" and "Right" keys pressed (moves player left and right)
  if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left) || sf::Keyboard::isKeyPressed(sf::Keyboard::A)) {
		spaceship->moveLeft();
	}
  else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right) || sf::Keyboard::isKeyPressed(sf::Keyboard::D)) {
		spaceship->moveRight();
	}

    
	
	// "Mouse Left-Click" pressed (player shoots bullets)
	if (sf::Mouse::isButtonPressed(sf::Mouse::Left)){
    if(bullet->position.y > 850 || bullet->position.y < 0 || bullet->position.x > 1100 || bullet->position.x < 0) {
    	bullet->set(spaceship->position.x,spaceship->position.y);
	    sf::Vector2f mousePosition = this->gameData->window.mapPixelToCoords(sf::Mouse::getPosition(this->gameData->window));
	    float cleanshot = atan2(sf::Mouse::getPosition(this->gameData->window).y - bullet->position.y, sf::Mouse::getPosition(this->gameData->window).x - bullet->position.x);
	    newshot = cleanshot;
        
        if(backbool == true){
        backbullet->set(spaceship->position.x,spaceship->position.y);
        }
        
        if(weapontoggle == "selectprimary"){
            int shotcountint = std::stoi(shotcountstring);
            shotcountstring = std::to_string(shotcountint);
            shotcount.setString(shotcountstring);
            
        }

    }
  }


  

      
  
}


void GameState2::update(float dt) {
  bullet->move(newshot);
  
  spaceship->update(dt);
  bullet->update(dt);
  
  if(backbool == true){
  backbullet->backmove(newshot);
  backbullet->update(dt);
  }
  
  

  elapsedpowertime += powerclock.getElapsedTime();
  powertime = powerclock.getElapsedTime();
  powerclock.restart();

  if (elapsedpowertime.asSeconds() > 5) {
    powercolor = rand() % 5 + 1;
    int powerx = rand() % 800 + 100;
    int powery = rand() % 700 + 100;
    if(powercolor == 1) {
      powerup.setFillColor(sf::Color::Red);
    }
    else if(powercolor == 2) {
      powerup.setFillColor(sf::Color::Magenta);
    }
    else if(powercolor == 3) {
      powerup.setFillColor(sf::Color::Blue);
    }
    else if(powercolor == 4) {
      powerup.setFillColor(sf::Color::Green);
    }
    else if(powercolor == 5) {
      powerup.setFillColor(sf::Color::Yellow);
    }
    powerup.setPosition(powerx,powery);

    elapsedpowertime = sf::milliseconds(0);
  }
  
  
  //power-up collision  
  if(spaceship->getPosition().intersects(powerup.getGlobalBounds())){
      powerup.setPosition(-1000,-1000);
      if(powercolor == 3){
            secondaryWeapon.setFillColor(sf::Color::Blue);
            bullet->modify("double");
            shotcountstring = "20";
            shotcount.setString(shotcountstring);
            piercing = false;
            backbool = true;
      }
      if(powercolor == 5){
            secondaryWeapon.setFillColor(sf::Color::Yellow);
            bullet->modify("big");
            shotcountstring = "20";
            shotcount.setString(shotcountstring);
            piercing = false;
            backbool = false;
      }
      if(powercolor == 4){
            secondaryWeapon.setFillColor(sf::Color::Green);
            bullet->modify("pierce");
            shotcountstring = "20";
            shotcount.setString(shotcountstring);
            piercing = true;
            backbool = false;
      }
      if(powercolor==2){
            shieldfollow = true;
            shield.setFillColor(sf::Color(255,255,255,128));
      }
      if(powercolor ==1){
            if(heart2.getPosition().x > 0 and heart1.getPosition().x > 0){
                    heart3.setPosition(120,50);
            }
            else
            {
                    heart2.setPosition(70,50);
            }
            
            
      }
  }
  
  if(shieldfollow == true){
        shield.setPosition(spaceship->position.x - 25,spaceship->position.y - 20);
  }
  

  // determine how fast goombas can spawn
  if (goombaSpawnTimer < 50) {  // TODO: can also use asSeconds() instead
     goombaSpawnTimer++;
  }

  // spawn goombas
  if (goombaSpawnTimer >= 50) {
    goombas.push_back(Goomba(this->gameData));
    goombaSpawnTimer = 0;
  }

  // move goombas down
  for (size_t i = 0; i < goombas.size(); i++) {
    goombas[i].moveDown();
    goombas[i].update(dt);

    // delete goombas if they go off the screen
    if (goombas[i].getPosition().y > this->gameData->window.getSize().y - 100) { // TODO: get rid of the '-100', only there for testing
      goombas.erase(goombas.begin() + i);
    }
  }

  // collision of bullets and goombas
  if (!goombas.empty()) {
    for (size_t i = 0; i < goombas.size(); i++) {
      if (bullet->getShape().getGlobalBounds().intersects(goombas[i].getShape().getGlobalBounds())) {
        // TODO: erase bullet
        goombas.erase(goombas.begin() + i);
        if(piercing == false){
        bullet->set(-10000000,-100000000);
        }
        break;
      }
    }
  }
  
  
  //playercollision
    if (!goombas.empty()) {
    for (size_t i = 0; i < goombas.size(); i++) {
      if (spaceship->getPosition().intersects(goombas[i].getShape().getGlobalBounds())) {
        // TODO: erase bullet
        goombas.erase(goombas.begin() + i);
        if(shieldfollow == true){
            shield.setPosition(-1000,-1000);
            shieldfollow = false;
        }
        else{
        if(heart3.getPosition().x >= 0){
            heart3.setPosition(-100,0);
        }
        else if(heart2.getPosition().x > 0){
            heart2.setPosition(-100,0);
        }
        else{
            this->gameData->stateManager.pushState(StateRef(new LoseState(this->gameData)), true);
        }
        }
        
        break;
      }
    }
  }

}


void GameState2::draw(float dt) {
	this->gameData->window.clear(sf::Color::White);
  this->gameData->window.draw(backgroundSprite);

  spaceship->draw();
  bullet->draw();
  
  if(backbool == true){
  backbullet->draw();
  }

  for (size_t i = 0; i < goombas.size(); i++) {
    goombas[i].draw();
  }


  this->gameData->window.draw(defaultWeapon);
  this->gameData->window.draw(secondaryWeapon);
  this->gameData->window.draw(heart1);
  this->gameData->window.draw(heart2);
  this->gameData->window.draw(heart3);
  this->gameData->window.draw(powerup);
  this->gameData->window.draw(powerup);
  this->gameData->window.draw(shotcount);
  this->gameData->window.draw(shield);

	this->gameData->window.display();
}
