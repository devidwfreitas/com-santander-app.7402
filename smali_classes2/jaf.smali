.class public Ljaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljae;


# instance fields
.field private a:Liyd;


# direct methods
.method public constructor <init>(Liyd;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ljaf;->a:Liyd;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Liut;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Ljag;->a:[I

    invoke-virtual {p2}, Liut;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 26
    :pswitch_0
    invoke-static {p1}, Livm;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0}, Liyd;->a()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Livm;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Livm;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-static {p1}, Livm;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0}, Liyd;->b()V

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-static {p1}, Livm;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0}, Liyd;->c()V

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {p1}, Livm;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_5
    invoke-static {p1}, Livm;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_6
    invoke-static {p1}, Livm;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_7
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    :pswitch_3
    invoke-static {p1}, Livm;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_8
    invoke-static {p1}, Livm;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_9
    invoke-static {p1}, Livm;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_a
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :pswitch_4
    invoke-static {p1}, Livm;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0}, Liyd;->d()V

    goto/16 :goto_0

    .line 71
    :cond_b
    iget-object v0, p0, Ljaf;->a:Liyd;

    invoke-interface {v0, p1}, Liyd;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
