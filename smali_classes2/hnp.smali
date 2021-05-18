.class public Lhnp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lhno;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lhno;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lhnp;->a:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lhnp;->b:Lhno;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lhno;Lhnm;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lhnp;-><init>(Landroid/content/Context;Lhno;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhnp;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/emprestimo/chat/ChatV2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    iget-object v1, p0, Lhnp;->b:Lhno;

    invoke-static {v1}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->a(Lhno;)Lhno;

    .line 117
    iget-object v1, p0, Lhnp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method
