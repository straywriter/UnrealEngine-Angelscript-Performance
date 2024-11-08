// Fill out your copyright notice in the Description page of Project Settings.


#include "TestCase/TestActor.h"


#include "AngelscriptBinds.h"

AS_FORCE_LINK const FAngelscriptBinds::FBind Bind_ATestActor(FAngelscriptBinds::EOrder::Late, []
{
	auto AActor_ = FAngelscriptBinds::ExistingClass("ATestActor");

	AActor_.Property("int8 Int8Value", &ATestActor::Int8Value);
	AActor_.Property("int16 Int16Value", &ATestActor::Int16Value);
	AActor_.Property("uint16 UInt16Value", &ATestActor::UInt16Value);
	AActor_.Property("uint32 UInt32Value", &ATestActor::UInt32Value);
	AActor_.Property("uint64 UInt64Value", &ATestActor::UInt64Value);

	AActor_.Method("void SetInt8ValueFunction(int8 InInt8Value)", METHOD_TRIVIAL(ATestActor, SetInt8ValueFunction));
	AActor_.Method("int8 GetInt8ValueFunction() const", METHOD_TRIVIAL(ATestActor, GetInt8ValueFunction));
	AActor_.Method("void SetInt16ValueFunction(int16 InInt16Value)", METHOD_TRIVIAL(ATestActor, SetInt16ValueFunction));
	AActor_.Method("int16 GetInt16ValueFunction() const", METHOD_TRIVIAL(ATestActor, GetInt16ValueFunction));
	AActor_.Method("void SetUInt16ValueFunction(uint16 InUInt16Value)", METHOD_TRIVIAL(ATestActor, SetUInt16ValueFunction));
	AActor_.Method("uint16 GetUInt16ValueFunction() const", METHOD_TRIVIAL(ATestActor, GetUInt16ValueFunction));
	AActor_.Method("void SetUInt32ValueFunction(uint32 InUInt32Value)", METHOD_TRIVIAL(ATestActor, SetUInt32ValueFunction));
	AActor_.Method("uint32 GetUInt32ValueFunction() const", METHOD_TRIVIAL(ATestActor, GetUInt32ValueFunction));
	AActor_.Method("void SetUInt64ValueFunction(uint64 InUInt64Value)", METHOD_TRIVIAL(ATestActor, SetUInt64ValueFunction));
	AActor_.Method("uint64 GetUInt64ValueFunction() const", METHOD_TRIVIAL(ATestActor, GetUInt64ValueFunction));
});


// Sets default values
ATestActor::ATestActor()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
}

// Called when the game starts or when spawned
void ATestActor::BeginPlay()
{
	Super::BeginPlay();

	InterfaceValue = this;
}

// Called every frame
void ATestActor::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

void ATestActor::StaticFunction()
{
}

void ATestActor::MemberFunction() const
{
}

void ATestActor::SetBoolValueFunction(const bool InBoolValue)
{
	BoolValue = InBoolValue;
}

bool ATestActor::GetBoolValueFunction() const
{
	return BoolValue;
}

void ATestActor::SetInt8ValueFunction(const int8 InInt8Value)
{
	Int8Value = InInt8Value;
}

int8 ATestActor::GetInt8ValueFunction() const
{
	return Int8Value;
}

void ATestActor::SetInt16ValueFunction(const int16 InInt16Value)
{
	Int16Value = InInt16Value;
}

int16 ATestActor::GetInt16ValueFunction() const
{
	return Int16Value;
}

void ATestActor::SetInt32ValueFunction(const int32 InInt32Value)
{
	Int32Value = InInt32Value;
}

int32 ATestActor::GetInt32ValueFunction() const
{
	return Int32Value;
}

void ATestActor::SetInt64ValueFunction(const int64 InInt64Value)
{
	Int64Value = InInt64Value;
}

int64 ATestActor::GetInt64ValueFunction() const
{
	return Int64Value;
}

void ATestActor::SetUInt8ValueFunction(const uint8 InUInt8Value)
{
	UInt8Value = InUInt8Value;
}

uint8 ATestActor::GetUInt8ValueFunction() const
{
	return UInt8Value;
}

void ATestActor::SetUInt16ValueFunction(const uint16 InUInt16Value)
{
	UInt16Value = InUInt16Value;
}

uint16 ATestActor::GetUInt16ValueFunction() const
{
	return UInt16Value;
}

void ATestActor::SetUInt32ValueFunction(const uint32 InUInt32Value)
{
	UInt32Value = InUInt32Value;
}

uint32 ATestActor::GetUInt32ValueFunction() const
{
	return UInt32Value;
}

void ATestActor::SetUInt64ValueFunction(const uint64 InUInt64Value)
{
	UInt64Value = InUInt64Value;
}

uint64 ATestActor::GetUInt64ValueFunction() const
{
	return UInt64Value;
}

void ATestActor::SetFloatValueFunction(const float InFloatValue)
{
	FloatValue = InFloatValue;
}

float ATestActor::GetFloatValueFunction() const
{
	return FloatValue;
}

void ATestActor::SetDoubleValueFunction(const double InDoubleValue)
{
	DoubleValue = InDoubleValue;
}

double ATestActor::GetDoubleValueFunction() const
{
	return DoubleValue;
}

void ATestActor::SetNameValueFunction(const FName& InNameValue)
{
	NameValue = InNameValue;
}

FName ATestActor::GetNameValueFunction() const
{
	return NameValue;
}

void ATestActor::SetTextValueFunction(const FText& InTextValue)
{
	TextValue = InTextValue;
}

FText ATestActor::GetTextValueFunction() const
{
	return TextValue;
}

void ATestActor::SetStringValueFunction(const FString& InStringValue)
{
	StringValue = InStringValue;
}

FString ATestActor::GetStringValueFunction() const
{
	return StringValue;
}

void ATestActor::SetEnumValueFunction(const ETestEnum InEnumValue)
{
	EnumValue = InEnumValue;
}

ETestEnum ATestActor::GetEnumValueFunction() const
{
	return EnumValue;
}

void ATestActor::SetEnumClassValueFunction(const ETestEnumClass InEnumClassValue)
{
	EnumClassValue = InEnumClassValue;
}

ETestEnumClass ATestActor::GetEnumClassValueFunction() const
{
	return EnumClassValue;
}

void ATestActor::SetStructValueFunction(const FTestStruct& InStructValue)
{
	StructValue = InStructValue;
}

FTestStruct ATestActor::GetStructValueFunction() const
{
	return StructValue;
}

void ATestActor::SetObjectValueFunction(ATestActor* InObjectValue)
{
	ObjectValue = InObjectValue;
}

ATestActor* ATestActor::GetObjectValueFunction() const
{
	return ObjectValue;
}

void ATestActor::SetClassValueFunction(UClass* InClassValue)
{
	ClassValue = InClassValue;
}

UClass* ATestActor::GetClassValueFunction() const
{
	return ClassValue;
}

void ATestActor::SetInterfaceValueFunction(const TScriptInterface<ITestInterface> InInterfaceValue)
{
	InterfaceValue = InInterfaceValue;
}

TScriptInterface<ITestInterface> ATestActor::GetInterfaceValueFunction() const
{
	return InterfaceValue;
}

void ATestActor::SetArrayValueFunction(const TArray<int32>& InArrayValue)
{
	ArrayValue = InArrayValue;
}

TArray<int32> ATestActor::GetArrayValueFunction() const
{
	return ArrayValue;
}

void ATestActor::SetSetValueFunction(const TSet<int32>& InSetValue)
{
	SetValue = InSetValue;
}

TSet<int32> ATestActor::GetSetValueFunction() const
{
	return SetValue;
}

void ATestActor::SetMapValueFunction(const TMap<int32, int32>& InMapValue)
{
	MapValue = InMapValue;
}

TMap<int32, int32> ATestActor::GetMapValueFunction() const
{
	return MapValue;
}
