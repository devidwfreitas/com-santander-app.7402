.class public Lndk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lndj;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lnbu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnbu;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lndk;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lndk;->b:Lnbu;

    .line 31
    return-void
.end method

.method static synthetic a(Lndk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lndk;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lndk;)Lnbu;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lndk;->b:Lnbu;

    return-object v0
.end method


# virtual methods
.method public a()Lndh;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lndy;

    invoke-direct {v0}, Lndy;-><init>()V

    iget-object v1, p0, Lndk;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v0, v1}, Lndy;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 38
    new-instance v1, Lndh;

    iget-object v2, p0, Lndk;->a:Landroid/content/Context;

    new-instance v3, Lndl;

    invoke-direct {v3, p0, v0}, Lndl;-><init>(Lndk;Ljava/util/List;)V

    invoke-direct {v1, v2, v0, v3}, Lndh;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
