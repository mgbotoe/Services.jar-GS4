.class public Lcom/immersion/IVTMagSweepElement;
.super Lcom/immersion/IVTElement;
.source "IVTMagSweepElement.java"


# instance fields
.field private definition:Lcom/immersion/MagSweepEffectDefinition;


# direct methods
.method public constructor <init>(ILcom/immersion/MagSweepEffectDefinition;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    iput-object p2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .registers 4

    const/16 v1, 0xa

    new-array v0, v1, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/immersion/IVTMagSweepElement;->getType()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/immersion/IVTMagSweepElement;->getTime()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getActuatorIndex()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getDefinition()Lcom/immersion/MagSweepEffectDefinition;
    .registers 2

    iget-object v0, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    return-object v0
.end method

.method public setDefinition(Lcom/immersion/MagSweepEffectDefinition;)V
    .registers 2

    iput-object p1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    return-void
.end method
