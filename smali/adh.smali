.class public Ladh;
.super Ljava/lang/Object;


# static fields
.field private static a:Ladh;


# instance fields
.field private b:Ladi;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ladh;
    .locals 1

    sget-object v0, Ladh;->a:Ladh;

    if-nez v0, :cond_0

    new-instance v0, Ladh;

    invoke-direct {v0}, Ladh;-><init>()V

    sput-object v0, Ladh;->a:Ladh;

    :cond_0
    sget-object v0, Ladh;->a:Ladh;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/modulo/ddav1/view/TitlesActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lje;Ljava/lang/String;Lji;Ljava/lang/Boolean;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Ladz;->b()Ladz;

    move-result-object v0

    invoke-virtual {v0, p1}, Ladz;->a(Lje;)V

    invoke-static {}, Laea;->a()Laea;

    move-result-object v0

    invoke-virtual {v0, p3}, Laea;->a(Lji;)V

    invoke-static {}, Laea;->a()Laea;

    move-result-object v0

    invoke-virtual {v0, p2}, Laea;->a(Ljava/lang/String;)V

    invoke-static {}, Laea;->a()Laea;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Laea;->a(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Ladh;->b:Ladi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladh;->b:Ladi;

    invoke-interface {v0}, Ladi;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ladh;->b:Ladi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladh;->b:Ladi;

    invoke-interface {v0, p1, p2}, Ladi;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Ljava/lang/Boolean;Ladi;)V
    .locals 1

    iput-object p6, p0, Ladh;->b:Ladi;

    invoke-direct {p0, p2, p3, p4, p5}, Ladh;->a(Lje;Ljava/lang/String;Lji;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ladh;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Ladh;->c()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ladh;->b:Ladi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladh;->b:Ladi;

    invoke-interface {v0, p1, p2}, Ladi;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Ladi;
    .locals 1

    iget-object v0, p0, Ladh;->b:Ladi;

    return-object v0
.end method
