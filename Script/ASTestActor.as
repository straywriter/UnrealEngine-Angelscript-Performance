

class AASTestActor : AActor
{

int32 Loop;

TArray<FString> Names;
TArray<double> Times;


UFUNCTION(BlueprintOverride)
void BeginPlay()
{
    TSubclassOf<UGameInstanceSubsystem> SubsystemClass = UTestSubsystem::StaticClass();
    auto Subsystem = Cast<UTestSubsystem>(Subsystem::GetGameInstanceSubsystem(SubsystemClass));

    Loop = Subsystem.Loop;

    StartTest();
    
    TestSelf();

    TestCpp();

    EndTest();
}

void StartTest()
{
    Names.Empty();
    Times.Empty();
}

void EndTest()
{
    FString Value;

	Value.Append("Name, Time\n");

    const auto Now = TestCase::GetTimestamp();

	auto Year = 0;

	auto Month = 0;

	auto Day = 0;

	auto Hour = 0;

	auto Minute = 0;

	auto Second = 0;

	auto Millisecond = 0;
    
	TestCase::BreakDateTime(Now, Year, Month, Day, Hour, Minute, Second, Millisecond);

	for (int x = 0; x < Names.Num(); ++x)
    {
        Value.Append(f"{Names[x]} ,{Times[x]}\n");
    }
	
    int intLoop = Loop;
    
	auto File = f"Angelscript-{TestCase::GetPlatform()}-{TestCase::GetBuildConfiguration()}-{intLoop}-{Year}-{Month}-{Day}-{Hour}-{Minute}-{Second}-{Millisecond}.csv";
    
	TestCase::SaveStringToFile(File, Value);
}
void Empty()
{
}

void EmptyFunction(int InLoop)
{
    int64 Start = TestCase::GetTimestamp();

    for (int i = 0; i <= InLoop; ++i)
    {
        Empty();
    }
    int64 End = TestCase::GetTimestamp();

    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);

    Names.Add("EmptyFunction");
    Times.Add(TotalSeconds);
}

void Add(int32 A, int32 B)
{
    auto x = A + B;
}

void AddFunction(int InLoop)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        Add(1, 2);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("AddFunction");
    Times.Add(TotalSeconds);
}

void Subtract(int32 A, int32 B)
{
    auto x = A - B;
}

void SubtractFunction(int InLoop)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        Subtract(1, 2);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SubtractFunction");
    Times.Add(TotalSeconds);
}

void Multiply(int32 A, int32 B)
{
    auto x = A * B;
}

void MultiplyFunction(int InLoop)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        Multiply(1, 2);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("MultiplyFunction");
    Times.Add(TotalSeconds);
}

void Divide(int32 A, int32 B)
{
    auto x = A / B;
}

void DivideFunction(int InLoop)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        Divide(1, 2);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("DivideFunction");
    Times.Add(TotalSeconds);
}

void SetCppBoolValue(int InLoop, ATestActor InObject, bool InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.BoolValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppBoolValue");
    Times.Add(TotalSeconds);
}

void GetCppBoolValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x =InObject.BoolValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppBoolValue");
    Times.Add(TotalSeconds);
}

void SetCppInt8Value(int InLoop, ATestActor InObject, int8 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.Int8Value = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppInt8Value");
    Times.Add(TotalSeconds);
}

void GetCppInt8Value(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.Int8Value;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppInt8Value");
    Times.Add(TotalSeconds);
}

void SetCppInt16Value(int InLoop, ATestActor InObject, int16 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.Int16Value = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppInt16Value");
    Times.Add(TotalSeconds);
}

void GetCppInt16Value(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.Int16Value;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppInt16Value");
    Times.Add(TotalSeconds);
}

void SetCppInt32Value(int InLoop, ATestActor InObject, int32 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.Int32Value = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppInt32Value");
    Times.Add(TotalSeconds);
}

void GetCppInt32Value(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.Int32Value;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppInt32Value");
    Times.Add(TotalSeconds);
}

void SetCppInt64Value(int InLoop, ATestActor InObject, int64 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.Int64Value = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppInt64Value");
    Times.Add(TotalSeconds);
}

void GetCppInt64Value(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.Int64Value;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppInt64Value");
    Times.Add(TotalSeconds);
}

void SetCppUInt8Value(int InLoop, ATestActor InObject, uint8 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.UInt8Value = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppUInt8Value");
    Times.Add(TotalSeconds);
}

void GetCppUInt8Value(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.UInt8Value;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppUInt8Value");
    Times.Add(TotalSeconds);
}

void SetCppUInt16Value(int InLoop, ATestActor InObject, uint16 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.UInt16Value = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppUInt16Value");
    Times.Add(TotalSeconds);
}

void GetCppUInt16Value(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.UInt16Value;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppUInt16Value");
    Times.Add(TotalSeconds);
}

void SetCppUInt32Value(int InLoop, ATestActor InObject, uint32 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.UInt32Value = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppUInt32Value");
    Times.Add(TotalSeconds);
}

void GetCppUInt32Value(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.UInt32Value;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppUInt32Value");
    Times.Add(TotalSeconds);
}

void SetCppUInt64Value(int InLoop, ATestActor InObject, uint64 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.UInt64Value = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppUInt64Value");
    Times.Add(TotalSeconds);
}

void GetCppUInt64Value(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.UInt64Value;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppUInt64Value");
    Times.Add(TotalSeconds);
}

void SetCppFloatValue(int InLoop, ATestActor InObject, float InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.FloatValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppFloatValue");
    Times.Add(TotalSeconds);
}

void GetCppFloatValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.FloatValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppFloatValue");
    Times.Add(TotalSeconds);
}

void SetCppDoubleValue(int InLoop, ATestActor InObject, double InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.DoubleValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppDoubleValue");
    Times.Add(TotalSeconds);
}

void GetCppDoubleValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.DoubleValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppDoubleValue");
    Times.Add(TotalSeconds);
}

void SetCppNameValue(int InLoop, ATestActor InObject, FName InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.NameValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppNameValue");
    Times.Add(TotalSeconds);
}

void GetCppNameValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.NameValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppNameValue");
    Times.Add(TotalSeconds);
}

void SetCppTextValue(int InLoop, ATestActor InObject, FText InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.TextValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppTextValue");
    Times.Add(TotalSeconds);
}

void GetCppTextValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.TextValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppTextValue");
    Times.Add(TotalSeconds);
}

void SetCppStringValue(int InLoop, ATestActor InObject, FString InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.StringValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppStringValue");
    Times.Add(TotalSeconds);
}

void GetCppStringValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.StringValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppStringValue");
    Times.Add(TotalSeconds);
}

void SetCppEnumValue(int InLoop, ATestActor InObject, ETestEnum InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.EnumValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppEnumValue");
    Times.Add(TotalSeconds);
}

void GetCppEnumValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.EnumValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppEnumValue");
    Times.Add(TotalSeconds);
}

void SetCppStructValue(int InLoop, ATestActor InObject, FTestStruct InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.StructValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppStructValue");
    Times.Add(TotalSeconds);
}

void GetCppStructValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.StructValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppStructValue");
    Times.Add(TotalSeconds);
}

void SetCppObjectValue(int InLoop, ATestActor InObject, ATestActor InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.ObjectValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppObjectValue");
    Times.Add(TotalSeconds);
}

void GetCppObjectValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.ObjectValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppObjectValue");
    Times.Add(TotalSeconds);
}

void SetCppClassValue(int InLoop, ATestActor InObject, UClass InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.ClassValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppClassValue");
    Times.Add(TotalSeconds);
}

void GetCppClassValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.ClassValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppClassValue");
    Times.Add(TotalSeconds);
}

void SetCppInterfaceValue(int InLoop, ATestActor InObject)
{
}

void GetCppInterfaceValue(int InLoop, ATestActor InObject)
{
}

void SetCppArrayValue(int InLoop, ATestActor InObject, TArray<int32>& InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.ArrayValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppArrayValue");
    Times.Add(TotalSeconds);
}

void GetCppArrayValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.ArrayValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppArrayValue");
    Times.Add(TotalSeconds);
}

void SetCppArrayElementValue(int InLoop, ATestActor InObject, int32 InIndex, int32 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.ArrayValue[InIndex] = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppArrayElementValue");
    Times.Add(TotalSeconds);
}

void GetCppArrayElementValue(int InLoop, ATestActor InObject, int32 InIndex)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.ArrayValue[InIndex];
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppArrayElementValue");
    Times.Add(TotalSeconds);
}

void SetCppSetValue(int InLoop, ATestActor InObject, int32 InIndex, TSet<int32> InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppSetValue");
    Times.Add(TotalSeconds);
}

void GetCppSetValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.SetValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppSetValue");
    Times.Add(TotalSeconds);
}

void SetCppMapValue(int InLoop, ATestActor InObject, int32 InIndex, TMap<int32, int32> InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.MapValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppMapValue");
    Times.Add(TotalSeconds);
}

void GetCppMapValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.MapValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppMapValue");
    Times.Add(TotalSeconds);
}

void SetCppMapElement(int InLoop, ATestActor InObject, int32 InIndex, int32 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
   for (int i = 0; i <= InLoop; ++i)
    {
        InObject.MapValue[InIndex] = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppMapElement");
    Times.Add(TotalSeconds);
}

void GetCppMapElement(int InLoop, ATestActor InObject, int32 InIndex)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.MapValue[InIndex];
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppMapElement");
    Times.Add(TotalSeconds);
}

void StaticCppFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        ATestActor::StaticFunction();
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("StaticCppFunction");
    Times.Add(TotalSeconds);
}

void MemberCppFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.MemberFunction();
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("MemberCppFunction");
    Times.Add(TotalSeconds);
}

void SetCppBoolValueFunction(int InLoop, ATestActor InObject, bool InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetBoolValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppBoolValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppBoolValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetBoolValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppBoolValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppInt8ValueFunction(int InLoop, ATestActor InObject, int8 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetInt8ValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppInt8ValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppInt8ValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetInt8ValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppInt8ValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppInt16ValueFunction(int InLoop, ATestActor InObject, int16 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetInt16ValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppInt16ValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppInt16ValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetInt16ValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppInt16ValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppInt32ValueFunction(int InLoop, ATestActor InObject, int32 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetInt32ValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppInt32ValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppInt32ValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetInt32ValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppInt32ValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppInt64ValueFunction(int InLoop, ATestActor InObject, int64 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetInt64ValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppInt64ValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppInt64ValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetInt64ValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppInt64ValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppUInt8ValueFunction(int InLoop, ATestActor InObject, uint8 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetUInt8ValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppUInt8ValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppUInt8ValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetUInt8ValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppUInt8ValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppUInt16ValueFunction(int InLoop, ATestActor InObject, uint16 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetUInt16ValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppUInt16ValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppUInt16ValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetUInt16ValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppUInt16ValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppUInt32ValueFunction(int InLoop, ATestActor InObject, uint32 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetUInt32ValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppUInt32ValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppUInt32ValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetUInt32ValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppUInt32ValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppUInt64ValueFunction(int InLoop, ATestActor InObject, uint64 InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetUInt64ValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppUInt64ValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppUInt64ValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetUInt64ValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppUInt64ValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppFloatValueFunction(int InLoop, ATestActor InObject, float InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetFloatValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppFloatValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppFloatValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetFloatValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppFloatValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppDoubleValueFunction(int InLoop, ATestActor InObject, double InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetDoubleValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppDoubleValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppDoubleValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetDoubleValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppDoubleValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppNameValueFunction(int InLoop, ATestActor InObject, FName InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetNameValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppNameValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppNameValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetNameValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppNameValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppTextValueFunction(int InLoop, ATestActor InObject, FText InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetTextValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppTextValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppTextValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetTextValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppTextValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppStringValueFunction(int InLoop, ATestActor InObject, FString InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetStringValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppStringValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppStringValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetStringValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppStringValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppEnumValueFunction(int InLoop, ATestActor InObject, ETestEnum InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetEnumValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppEnumValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppEnumValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetEnumValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppEnumValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppEnumClassValueFunction(int InLoop, ATestActor InObject, ETestEnumClass InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetEnumClassValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppEnumClassValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppEnumClassValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetEnumClassValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppEnumClassValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppStructValueFunction(int InLoop, ATestActor InObject, FTestStruct InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetStructValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppStructValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppStructValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetStructValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppStructValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppObjectValueFunction(int InLoop, ATestActor InObject, ATestActor InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetObjectValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppObjectValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppObjectValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetObjectValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppObjectValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppClassValueFunction(int InLoop, ATestActor InObject, UClass InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetClassValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppClassValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppClassValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetClassValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppClassValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppInterfaceValueFunction(int InLoop, ATestActor InObject)
{
}

void GetCppInterfaceValueFunction(int InLoop, ATestActor InObject)
{
}

void SetCppArrayValueFunction(int InLoop, ATestActor InObject, TArray<int32> InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetArrayValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppArrayValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppArrayValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetArrayValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppArrayValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppSetValueFunction(int InLoop, ATestActor InObject, TSet<int32> InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetSetValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppSetValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppSetValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetSetValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppSetValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppMapValueFunction(int InLoop, ATestActor InObject, TMap<int32, int32> InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetMapValueFunction(InValue);
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppMapValueFunction");
    Times.Add(TotalSeconds);
}

void GetCppMapValueFunction(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.GetMapValueFunction();
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppMapValueFunction");
    Times.Add(TotalSeconds);
}

void SetCppEnumClassValue(int InLoop, ATestActor InObject, ETestEnumClass InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.EnumClassValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppEnumClassValue");
    Times.Add(TotalSeconds);
}

void GetCppEnumClassValue(int InLoop, ATestActor InObject)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.EnumClassValue;
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppEnumClassValue");
    Times.Add(TotalSeconds);
}

void SetCppArrayElement(int InLoop, ATestActor InObject, int InIndex, int InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.ArrayValue[InIndex] = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppArrayElement");
    Times.Add(TotalSeconds);
}

void GetCppArrayElement(int InLoop, ATestActor InObject, int InIndex)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        auto x = InObject.ArrayValue[InIndex];
        
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("GetCppArrayElement");
    Times.Add(TotalSeconds);
}

void SetCppSetValue(int InLoop, ATestActor InObject, TSet<int32> InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.SetValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppSetValue");
    Times.Add(TotalSeconds);
}

void SetCppMapValue(int InLoop, ATestActor InObject, TMap<int32, int32> InValue)
{
    int64 Start = TestCase::GetTimestamp();
    
    for (int i = 0; i <= InLoop; ++i)
    {
        InObject.MapValue = InValue;
    }
    int64 End = TestCase::GetTimestamp();
    
    double TotalSeconds = TestCase::GetTotalSeconds(End, Start);
    
    Names.Add("SetCppMapValue");
    Times.Add(TotalSeconds);
}



void TestSelf()
{
    EmptyFunction(Loop);

    AddFunction(Loop);

    SubtractFunction(Loop);

    MultiplyFunction(Loop);

    DivideFunction(Loop);
}

void TestCpp()
{
    FVector SpawnLocation = FVector(0, 0, 0);
    FRotator SpawnRotation = FRotator(0, 0, 0);
    auto TestActor = ATestActor::Spawn(SpawnLocation, SpawnRotation);

    TestActor.MapValue.Add(1, 2);
    TestActor.MapValue.Add(1, 2);

    TestActor.SetValue.Add(1);
    TestActor.SetValue.Add(1);

    auto TestClass = ATestActor::StaticClass();
    
    FTestStruct TestStruct;
    TestStruct.Value = 1;
    
    ETestEnum TestEnum = ETestEnum::TestEnumOne;
    ETestEnumClass TestEnumClass = ETestEnumClass::TestEnumClassOne;;

    TArray<int32> TestArray;
    TestArray.Add(1);


    TSet<int32> TestSet;
    TestSet.Add(1);

    TMap<int32, int32> TestMap;
    TestMap.Add(0, 1);
    
    // Bool
    SetCppBoolValue(Loop, TestActor, true);

    GetCppBoolValue(Loop, TestActor);

    // Int8
    SetCppInt8Value(Loop, TestActor, 1);

    GetCppInt8Value(Loop, TestActor);

    // Int16
    SetCppInt16Value(Loop, TestActor, 1);

    GetCppInt16Value(Loop, TestActor);

    // Int32
    SetCppInt32Value(Loop, TestActor, 1);

    GetCppInt32Value(Loop, TestActor);

    // Int64
    SetCppInt64Value(Loop, TestActor, 1);

    GetCppInt64Value(Loop, TestActor);

    // UInt8
    SetCppUInt8Value(Loop, TestActor, 1);

    GetCppUInt8Value(Loop, TestActor);

    // UInt16
    SetCppUInt16Value(Loop, TestActor, 1);

    GetCppUInt16Value(Loop, TestActor);

    // UInt32
    SetCppUInt32Value(Loop, TestActor, 1);

    GetCppUInt32Value(Loop, TestActor);

    // UInt64
    SetCppUInt64Value(Loop, TestActor, 1);

    GetCppUInt64Value(Loop, TestActor);

    // Float
    SetCppFloatValue(Loop, TestActor, 1.0);

    GetCppFloatValue(Loop, TestActor);

    // Double
    SetCppDoubleValue(Loop, TestActor, 1.0);

    GetCppDoubleValue(Loop, TestActor);

    // FName
    SetCppNameValue(Loop, TestActor, FName("Name"));

    GetCppNameValue(Loop, TestActor);

    // FText
    SetCppTextValue(Loop, TestActor, FText::FromString("Text"));

    GetCppTextValue(Loop, TestActor);

    // FString
    SetCppStringValue(Loop, TestActor, "String");

    GetCppStringValue(Loop, TestActor);

    // UEnum
    SetCppEnumValue(Loop, TestActor, TestEnum);

    GetCppEnumValue(Loop, TestActor);

    // UEnum Class
    SetCppEnumClassValue(Loop, TestActor, TestEnumClass);

    GetCppEnumClassValue(Loop, TestActor);

    // UStruct
    SetCppStructValue(Loop, TestActor, TestStruct);

    GetCppStructValue(Loop, TestActor);

    // UObject
    SetCppObjectValue(Loop, TestActor, TestActor);

    GetCppObjectValue(Loop, TestActor);

    // UClass
    SetCppClassValue(Loop, TestActor, TestClass);

    GetCppClassValue(Loop, TestActor);

    // UInterface 
    SetCppInterfaceValue(Loop, TestActor);

    GetCppInterfaceValue(Loop, TestActor);

    // TArray
    SetCppArrayValue(Loop, TestActor, TestArray);

    GetCppArrayValue(Loop, TestActor);

    // TArray Element
    SetCppArrayElement(Loop, TestActor, 0, 1);

    GetCppArrayElement(Loop, TestActor, 0);

    // TSet
    SetCppSetValue(Loop, TestActor, TestSet);

    GetCppSetValue(Loop, TestActor);

    // TMap
    SetCppMapValue(Loop, TestActor, TestMap);

    GetCppMapValue(Loop, TestActor);

    // TMap Element
    SetCppMapElement(Loop, TestActor, 0, 1);

    GetCppMapElement(Loop, TestActor, 0);

    // Static
    StaticCppFunction(Loop, TestActor);

    // Member
    MemberCppFunction(Loop, TestActor);

    // Bool
    SetCppBoolValueFunction(Loop, TestActor, true);

    GetCppBoolValueFunction(Loop, TestActor);

    // Int8
    SetCppInt8ValueFunction(Loop, TestActor, 1);

    GetCppInt8ValueFunction(Loop, TestActor);

    // Int16
    SetCppInt16ValueFunction(Loop, TestActor, 1);

    GetCppInt16ValueFunction(Loop, TestActor);

    // Int32
    SetCppInt32ValueFunction(Loop, TestActor, 1);

    GetCppInt32ValueFunction(Loop, TestActor);

    // Int64
    SetCppInt64ValueFunction(Loop, TestActor, 1);

    GetCppInt64ValueFunction(Loop, TestActor);

    // UInt8
    SetCppUInt8ValueFunction(Loop, TestActor, 1);

    GetCppUInt8ValueFunction(Loop, TestActor);

    // UInt16
    SetCppUInt16ValueFunction(Loop, TestActor, 1);

    GetCppUInt16ValueFunction(Loop, TestActor);

    // UInt32
    SetCppUInt32ValueFunction(Loop, TestActor, 1);

    GetCppUInt32ValueFunction(Loop, TestActor);

    // UInt64
    SetCppUInt64ValueFunction(Loop, TestActor, 1);

    GetCppUInt64ValueFunction(Loop, TestActor);

    // Float
    SetCppFloatValueFunction(Loop, TestActor, 1.0);

    GetCppFloatValueFunction(Loop, TestActor);

    // Double
    SetCppDoubleValueFunction(Loop, TestActor, 1.0);

    GetCppDoubleValueFunction(Loop, TestActor);

    // FName
    SetCppNameValueFunction(Loop, TestActor, FName("Name"));

    GetCppNameValueFunction(Loop, TestActor);

    // FText
    SetCppTextValueFunction(Loop, TestActor, FText::FromString("Text"));

    GetCppTextValueFunction(Loop, TestActor);

    // FString
    SetCppStringValueFunction(Loop, TestActor, "String");

    GetCppStringValueFunction(Loop, TestActor);

    // UEnum
    SetCppEnumValueFunction(Loop, TestActor, TestEnum);

    GetCppEnumValueFunction(Loop, TestActor);

    // UEnum Class
    SetCppEnumClassValueFunction(Loop, TestActor, TestEnumClass);

    GetCppEnumClassValueFunction(Loop, TestActor);

    // UStruct
    SetCppStructValueFunction(Loop, TestActor, TestStruct);

    GetCppStructValueFunction(Loop, TestActor);

    // UObject
    SetCppObjectValueFunction(Loop, TestActor, TestActor);

    GetCppObjectValueFunction(Loop, TestActor);

    // UClass
    SetCppClassValueFunction(Loop, TestActor, TestClass);

    GetCppClassValueFunction(Loop, TestActor);

    // UInterface 
    SetCppInterfaceValueFunction(Loop, TestActor);

    GetCppInterfaceValueFunction(Loop, TestActor);

    // TArray
    SetCppArrayValueFunction(Loop, TestActor, TestArray);

    GetCppArrayValueFunction(Loop, TestActor);

    // TSet
    SetCppSetValueFunction(Loop, TestActor, TestSet);

    GetCppSetValueFunction(Loop, TestActor);

    // TMap
    SetCppMapValueFunction(Loop, TestActor, TestMap);

    GetCppMapValueFunction(Loop, TestActor);

}
}