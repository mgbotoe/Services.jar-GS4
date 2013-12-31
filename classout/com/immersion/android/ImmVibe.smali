.class public Lcom/immersion/android/ImmVibe;
.super Lcom/immersion/ImmVibe;
.source "ImmVibe.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ImmVibeJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/immersion/ImmVibe;-><init>()V

    return-void
.end method

.method private native CloseDevice2(I)V
.end method

.method private native CreateStreamingEffect(I)I
.end method

.method private native DeleteIVTFile(Ljava/lang/String;)V
.end method

.method private native DestroyStreamingEffect(II)V
.end method

.method private native GetBuiltInEffects()[B
.end method

.method private native GetDeviceCapabilityBool(II)Z
.end method

.method private native GetDeviceCapabilityInt32(II)I
.end method

.method private native GetDeviceCapabilityString(II)Ljava/lang/String;
.end method

.method private native GetDeviceCount()I
.end method

.method private native GetDevicePropertyBool(II)Z
.end method

.method private native GetDevicePropertyInt32(II)I
.end method

.method private native GetDevicePropertyString(II)Ljava/lang/String;
.end method

.method private native GetDeviceState(I)I
.end method

.method private native GetEffectState(II)I
.end method

.method private native GetIVTEffectCount([B)I
.end method

.method private native GetIVTEffectDuration([BI)I
.end method

.method private native GetIVTEffectIndexFromName([BLjava/lang/String;)I
.end method

.method private native GetIVTEffectName([BI)Ljava/lang/String;
.end method

.method private native GetIVTEffectType([BI)I
.end method

.method private native GetIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
.end method

.method private native GetIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
.end method

.method private native GetIVTSize2([B)I
.end method

.method private native Initialize2()V
.end method

.method private native InitializeIVTBuffer(I)[B
.end method

.method private native InsertIVTElement2([BI[I[B)[B
.end method

.method private native ModifyPlayingMagSweepEffect(IIIIIIIII)V
.end method

.method private native ModifyPlayingPeriodicEffect(IIIIIIIIII)V
.end method

.method private native OpenCompositeDevice2([II)I
.end method

.method private native OpenDevice2(I)I
.end method

.method private native PausePlayingEffect(II)V
.end method

.method private native PlayIVTEffect(I[BI)I
.end method

.method private native PlayIVTEffectRepeat(I[BIB)I
.end method

.method private native PlayMagSweepEffect(IIIIIIII)I
.end method

.method private native PlayPeriodicEffect(IIIIIIIII)I
.end method

.method private native PlayStreamingSample(II[BI)V
.end method

.method private native PlayStreamingSampleWithOffset(II[BII)V
.end method

.method private native PlayWaveformEffect(I[BIIII)I
.end method

.method private native ReadIVTElement2([BII)[I
.end method

.method private native ReadIVTElementData([BII)[B
.end method

.method private native RemoveIVTElement2([BII)[B
.end method

.method private native ResumePausedEffect(II)V
.end method

.method private native SaveIVTFile([BLjava/lang/String;)V
.end method

.method private native SetDevicePropertyBool(IIZ)V
.end method

.method private native SetDevicePropertyInt32(III)V
.end method

.method private native SetDevicePropertyString(IILjava/lang/String;)V
.end method

.method private native StopAllPlayingEffects(I)V
.end method

.method private native StopPlayingEffect(II)V
.end method

.method private native Terminate2()V
.end method


# virtual methods
.method public closeDevice(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    :cond_6
    return-void
.end method

.method public createStreamingEffect(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CreateStreamingEffect(I)I

    move-result v0

    return v0
.end method

.method public deleteIVTFile(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->DeleteIVTFile(Ljava/lang/String;)V

    return-void
.end method

.method public destroyStreamingEffect(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->DestroyStreamingEffect(II)V

    return-void
.end method

.method public getBuiltInEffects()[B
    .registers 2

    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCapabilityBool(II)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityBool(II)Z

    move-result v0

    return v0
.end method

.method public getDeviceCapabilityInt32(II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityInt32(II)I

    move-result v0

    return v0
.end method

.method public getDeviceCapabilityString(II)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCount()I
    .registers 2

    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetDeviceCount()I

    move-result v0

    return v0
.end method

.method public getDevicePropertyBool(II)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyBool(II)Z

    move-result v0

    return v0
.end method

.method public getDevicePropertyInt32(II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyInt32(II)I

    move-result v0

    return v0
.end method

.method public getDevicePropertyString(II)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceState(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetDeviceState(I)I

    move-result v0

    return v0
.end method

.method public getEffectState(II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetEffectState(II)I

    move-result v0

    return v0
.end method

.method public getIVTEffectCount([B)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTEffectCount([B)I

    move-result v0

    return v0
.end method

.method public getIVTEffectDuration([BI)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectDuration([BI)I

    move-result v0

    return v0
.end method

.method public getIVTEffectIndexFromName([BLjava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectIndexFromName([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIVTEffectName([BI)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectName([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIVTEffectType([BI)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectType([BI)I

    move-result v0

    return v0
.end method

.method public getIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->GetIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V

    return-void
.end method

.method public getIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/immersion/android/ImmVibe;->GetIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V

    return-void
.end method

.method public getIVTSize([B)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTSize2([B)I

    move-result v0

    return v0
.end method

.method public getIVTSize([BI)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTSize2([B)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .registers 1

    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->Initialize2()V

    return-void
.end method

.method public initializeIVTBuffer(I)[B
    .registers 3

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->InitializeIVTBuffer(I)[B

    move-result-object v0

    return-object v0
.end method

.method public insertIVTElement([BII[I)[B
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/immersion/android/ImmVibe;->InsertIVTElement2([BI[I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public insertIVTElement([BI[I[B)[B
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->InsertIVTElement2([BI[I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public modifyPlayingMagSweepEffect(IIIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->ModifyPlayingMagSweepEffect(IIIIIIIII)V

    return-void
.end method

.method public modifyPlayingPeriodicEffect(IIIIIIIIII)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/immersion/android/ImmVibe;->ModifyPlayingPeriodicEffect(IIIIIIIIII)V

    return-void
.end method

.method public openCompositeDevice(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/immersion/android/ImmVibe;->OpenCompositeDevice2([II)I

    move-result v0

    return v0
.end method

.method public openCompositeDevice([IILjava/lang/String;)I
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, v2, p2}, Lcom/immersion/android/ImmVibe;->OpenCompositeDevice2([II)I

    move-result v1

    if-eqz p3, :cond_13

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {p0, v1, v2, p3}, Lcom/immersion/android/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    :cond_13
    return v1

    :catch_14
    move-exception v0

    invoke-direct {p0, v1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openDevice(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->OpenDevice2(I)I

    move-result v0

    return v0
.end method

.method public openDevice(ILjava/lang/String;)I
    .registers 7

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->OpenDevice2(I)I

    move-result v1

    if-eqz p2, :cond_12

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :try_start_f
    invoke-virtual {p0, v1, v2, p2}, Lcom/immersion/android/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    :cond_12
    return v1

    :catch_13
    move-exception v0

    invoke-direct {p0, v1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public pausePlayingEffect(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->PausePlayingEffect(II)V

    return-void
.end method

.method public playBuiltInEffect(II)I
    .registers 4

    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/immersion/android/ImmVibe;->PlayIVTEffect(I[BI)I

    move-result v0

    return v0
.end method

.method public playBuiltInEffectRepeat(IIB)I
    .registers 5

    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/immersion/android/ImmVibe;->PlayIVTEffectRepeat(I[BIB)I

    move-result v0

    return v0
.end method

.method public playIVTEffect(I[BI)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->PlayIVTEffect(I[BI)I

    move-result v0

    return v0
.end method

.method public playIVTEffectRepeat(I[BIB)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayIVTEffectRepeat(I[BIB)I

    move-result v0

    return v0
.end method

.method public playMagSweepEffect(IIIIIIII)I
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/immersion/android/ImmVibe;->PlayMagSweepEffect(IIIIIIII)I

    move-result v0

    return v0
.end method

.method public playPeriodicEffect(IIIIIIIII)I
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->PlayPeriodicEffect(IIIIIIIII)I

    move-result v0

    return v0
.end method

.method public playStreamingSample(II[BI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayStreamingSample(II[BI)V

    return-void
.end method

.method public playStreamingSampleWithOffset(II[BII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/immersion/android/ImmVibe;->PlayStreamingSampleWithOffset(II[BII)V

    return-void
.end method

.method public playWaveformEffect(I[BIIII)I
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/immersion/android/ImmVibe;->PlayWaveformEffect(I[BIIII)I

    move-result v0

    return v0
.end method

.method public readIVTElement([BII)[I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->ReadIVTElement2([BII)[I

    move-result-object v0

    return-object v0
.end method

.method public readIVTElement([BIII)[I
    .registers 6

    invoke-direct {p0, p1, p3, p4}, Lcom/immersion/android/ImmVibe;->ReadIVTElement2([BII)[I

    move-result-object v0

    return-object v0
.end method

.method public readIVTElementData([BII)[B
    .registers 5

    invoke-direct {p0, p1, p2, p2}, Lcom/immersion/android/ImmVibe;->ReadIVTElementData([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public removeIVTElement([BII)[B
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->RemoveIVTElement2([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public removeIVTElement([BIII)[B
    .registers 6

    invoke-direct {p0, p1, p3, p4}, Lcom/immersion/android/ImmVibe;->RemoveIVTElement2([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public resumePausedEffect(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->ResumePausedEffect(II)V

    return-void
.end method

.method public saveIVTFile([BLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->SaveIVTFile([BLjava/lang/String;)V

    return-void
.end method

.method public setDevicePropertyBool(IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyBool(IIZ)V

    return-void
.end method

.method public setDevicePropertyInt32(III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyInt32(III)V

    return-void
.end method

.method public setDevicePropertyString(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyString(IILjava/lang/String;)V

    return-void
.end method

.method public stopAllPlayingEffects(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->StopAllPlayingEffects(I)V

    return-void
.end method

.method public stopPlayingEffect(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->StopPlayingEffect(II)V

    return-void
.end method

.method public terminate()V
    .registers 1

    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->Terminate2()V

    invoke-super {p0}, Lcom/immersion/ImmVibe;->terminate()V

    return-void
.end method
