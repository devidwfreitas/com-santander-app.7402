.class public Lbdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lbdj;->a:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lbdj;->b:Ljava/util/List;

    .line 65
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbcd;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    const-string v0, "ty"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 54
    const-string v0, "LOTTIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shape type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 26
    :sswitch_0
    const-string v2, "gr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "st"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "gs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "fl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "gf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "tr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "el"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "rc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "tm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "sr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "rp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    .line 28
    :pswitch_0
    invoke-static {p0, p1}, Lbdk;->a(Lorg/json/JSONObject;Lawr;)Lbdj;

    move-result-object v0

    goto/16 :goto_1

    .line 30
    :pswitch_1
    invoke-static {p0, p1}, Lbdq;->a(Lorg/json/JSONObject;Lawr;)Lbdo;

    move-result-object v0

    goto/16 :goto_1

    .line 32
    :pswitch_2
    invoke-static {p0, p1}, Lbck;->a(Lorg/json/JSONObject;Lawr;)Lbci;

    move-result-object v0

    goto/16 :goto_1

    .line 34
    :pswitch_3
    invoke-static {p0, p1}, Lbdi;->a(Lorg/json/JSONObject;Lawr;)Lbdg;

    move-result-object v0

    goto/16 :goto_1

    .line 36
    :pswitch_4
    invoke-static {p0, p1}, Lbch;->a(Lorg/json/JSONObject;Lawr;)Lbcf;

    move-result-object v0

    goto/16 :goto_1

    .line 38
    :pswitch_5
    invoke-static {p0, p1}, Lbbt;->a(Lorg/json/JSONObject;Lawr;)Lbbr;

    move-result-object v0

    goto/16 :goto_1

    .line 40
    :pswitch_6
    invoke-static {p0, p1}, Lbdn;->a(Lorg/json/JSONObject;Lawr;)Lbdl;

    move-result-object v0

    goto/16 :goto_1

    .line 42
    :pswitch_7
    invoke-static {p0, p1}, Lbcc;->a(Lorg/json/JSONObject;Lawr;)Lbca;

    move-result-object v0

    goto/16 :goto_1

    .line 44
    :pswitch_8
    invoke-static {p0, p1}, Lbda;->a(Lorg/json/JSONObject;Lawr;)Lbcy;

    move-result-object v0

    goto/16 :goto_1

    .line 46
    :pswitch_9
    invoke-static {p0, p1}, Lbdv;->a(Lorg/json/JSONObject;Lawr;)Lbdt;

    move-result-object v0

    goto/16 :goto_1

    .line 48
    :pswitch_a
    invoke-static {p0, p1}, Lbcw;->a(Lorg/json/JSONObject;Lawr;)Lbcu;

    move-result-object v0

    goto/16 :goto_1

    .line 50
    :pswitch_b
    invoke-static {p0}, Lbcs;->a(Lorg/json/JSONObject;)Lbcq;

    move-result-object v0

    goto/16 :goto_1

    .line 52
    :pswitch_c
    invoke-static {p0, p1}, Lbdc;->a(Lorg/json/JSONObject;Lawr;)Lbdb;

    move-result-object v0

    goto/16 :goto_1

    .line 26
    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_7
        0xcc6 -> :sswitch_3
        0xcdf -> :sswitch_4
        0xceb -> :sswitch_0
        0xcec -> :sswitch_2
        0xda0 -> :sswitch_b
        0xe31 -> :sswitch_8
        0xe3e -> :sswitch_c
        0xe55 -> :sswitch_6
        0xe5f -> :sswitch_a
        0xe61 -> :sswitch_1
        0xe79 -> :sswitch_9
        0xe7e -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Layf;

    invoke-direct {v0, p1, p2, p0}, Layf;-><init>(Lawu;Lbdy;Lbdj;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbdj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lbdj;->b:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeGroup{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbdj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbdj;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
