#include <stdio.h>

typedef struct name
{
    int x;
    int y;
} Coordinate;

enum {FREE, X, O};

void SetPlayerSymbols(int * FirstPlayerSymbol, int * SecondPlayerSymbol)
{
    (*FirstPlayerSymbol) = O;
    (*SecondPlayerSymbol) = X;
}

void InitializeBoard(int Matrix[][3])
{
    for (int i = 0; i < 3; i++)
        for (int j = 0; j < 3; j++)
            Matrix[i][j] = FREE;
}

void ShowBoard(int Matrix[][3])
{
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            if (Matrix[i][j] == FREE)
                printf("    -   ");

            if (Matrix[i][j] == X)
                printf("    X   ");

            if (Matrix[i][j] == O)
                printf("    O   ");
        }

        printf("\n");
    }

    printf("\n");
}

int GetCurrentPlayer(int Player)
{
    if (Player == 1)
        Player = 2;
    else
        Player = 1;

    return Player;
}

int GetPlayerSymbol(int FirstPlayerSymbol, int SecondPlayerSymbol, int Player)
{
    int Symbol;

    if (Player == 1)
        Symbol = FirstPlayerSymbol;
    else
        Symbol = SecondPlayerSymbol;

    return Symbol;
}

int Condition(int x, int y)
{
    return (x >= 0 && x < 3) && (y >= 0 && y < 3);
}

int CheckIfWin(int Matrix[][3], int Symbol)
{
    for (int i = 0; i < 3; i++)
        if (Matrix[i][0] == Symbol && Matrix[i][1] == Symbol && Matrix[i][2] == Symbol)
            return 1;

    for (int j = 0; j < 3; j++)
        if (Matrix[0][j] == Symbol && Matrix[1][j] == Symbol && Matrix[2][j] == Symbol)
            return 1;

    if (Matrix[0][0] == Symbol && Matrix[1][1] == Symbol && Matrix[2][2] == Symbol)
        return 1;

    if (Matrix[0][2] == Symbol && Matrix[1][1] == Symbol && Matrix[2][0] == Symbol)
        return 1;

    return 0;
}

void PlayTheGame(int Matrix[][3], int FirstPlayerSymbol, int SecondPlayerSymbol)
{
    int Choices = 9;
    int Win = 0;
    int Player = 0;
    int Symbol;
    Coordinate Position;

    while (Win == 0)
    {
        Player = GetCurrentPlayer(Player);

        Symbol = GetPlayerSymbol(FirstPlayerSymbol, SecondPlayerSymbol, Player);

        printf("Player %d choose a position : ", Player);
        scanf("%d %d", &Position.x, &Position.y);

        if (Condition(Position.x, Position.y))
        {
            if (Matrix[Position.x][Position.y] == FREE)
            {
                Matrix[Position.x][Position.y] = Symbol;
                ShowBoard(Matrix);
            }
            else
                printf("Occupied!\n");
        }
        else
            printf("Invalid choice!\n");

        Win = CheckIfWin(Matrix, Symbol);

        Choices -= 1;
    }

    if (Choices == 0)
        printf("Game over! No one won.");
    else
        printf("Victory for player %d!", Player);
}

int main()
{
    int FirstPlayerSymbol, SecondPlayerSymbol;
    SetPlayerSymbols(&FirstPlayerSymbol, &SecondPlayerSymbol);

    int Matrix[3][3];

    InitializeBoard(Matrix);
    ShowBoard(Matrix);

    PlayTheGame(Matrix, FirstPlayerSymbol, SecondPlayerSymbol);

    return 0;
}
