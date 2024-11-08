// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "TestCaseBlueprintFunctionLibrary.generated.h"


/**
 * 
 */
UCLASS(BlueprintType)
class SCRIPTPLUGINCOMPARE_API UTestCaseBlueprintFunctionLibrary : public UBlueprintFunctionLibrary
{
	GENERATED_BODY()

public:
	UFUNCTION(BlueprintCallable, BlueprintPure)
	static int64 GetTimestamp();

	UFUNCTION(BlueprintCallable)
	static double GetTotalSeconds(const int64& A, const int64& B);

	UFUNCTION(BlueprintCallable)
	static FString GetPlatform();

	UFUNCTION(BlueprintCallable)
	static FString GetBuildConfiguration();

	UFUNCTION(BlueprintCallable)
	static void SaveStringToFile(FString FileName, const FString& String);

	UFUNCTION(BlueprintCallable)
	static void BreakDateTime(int64 Now, int32& Year, int32& Month, int32& Day, int32& Hour, int32& Minute, int32& Second, int32& Millisecond);

};
