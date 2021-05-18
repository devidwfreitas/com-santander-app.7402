.class public final enum Lbdw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbdw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbdw;

.field public static final enum Individually:Lbdw;

.field public static final enum Simultaneously:Lbdw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lbdw;

    const-string v1, "Simultaneously"

    invoke-direct {v0, v1, v2}, Lbdw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbdw;->Simultaneously:Lbdw;

    .line 16
    new-instance v0, Lbdw;

    const-string v1, "Individually"

    invoke-direct {v0, v1, v3}, Lbdw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbdw;->Individually:Lbdw;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lbdw;

    sget-object v1, Lbdw;->Simultaneously:Lbdw;

    aput-object v1, v0, v2

    sget-object v1, Lbdw;->Individually:Lbdw;

    aput-object v1, v0, v3

    sput-object v0, Lbdw;->$VALUES:[Lbdw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static forId(I)Lbdw;
    .locals 3

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown trim path type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :pswitch_0
    sget-object v0, Lbdw;->Simultaneously:Lbdw;

    .line 23
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lbdw;->Individually:Lbdw;

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbdw;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lbdw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbdw;

    return-object v0
.end method

.method public static values()[Lbdw;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lbdw;->$VALUES:[Lbdw;

    invoke-virtual {v0}, [Lbdw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbdw;

    return-object v0
.end method
