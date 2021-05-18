.class public Liwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liwj;


# instance fields
.field private a:Ljat;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljat;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Liwk;->a:Ljat;

    .line 27
    iput-object p2, p0, Liwk;->b:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method static synthetic a(Liwk;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Liwk;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Liwk;)Ljat;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Liwk;->a:Ljat;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljbm;

    new-instance v1, Liwl;

    invoke-direct {v1, p0}, Liwl;-><init>(Liwk;)V

    invoke-direct {v0, v1}, Ljbm;-><init>(Lgkw;)V

    .line 44
    invoke-virtual {v0, p1}, Ljbm;->a(Ljava/lang/String;)V

    .line 45
    return-void
.end method
