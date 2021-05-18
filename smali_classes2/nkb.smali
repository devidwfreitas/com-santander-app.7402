.class public Lnkb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "view"

.field public static final b:Ljava/lang/String; = "activity"

.field public static final c:Ljava/lang/String; = "interaction"

.field public static final d:Ljava/lang/String; = "derived"

.field public static final e:Ljava/lang/String; = "conversion"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "activity"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "activity"

    goto :goto_0

    :sswitch_0
    const-string v1, "view"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "interaction"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "derived"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "conversion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_0
    const-string v0, "view"

    goto :goto_0

    :pswitch_1
    const-string v0, "interaction"

    goto :goto_0

    :pswitch_2
    const-string v0, "derived"

    goto :goto_0

    :pswitch_3
    const-string v0, "conversion"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x373aa5 -> :sswitch_0
        0x5cc0961d -> :sswitch_2
        0x6deace12 -> :sswitch_1
        0x79c94516 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
