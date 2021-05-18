.class public Livo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Livn;


# instance fields
.field private a:Ljac;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljac;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Livo;->a:Ljac;

    .line 26
    iput-object p2, p0, Livo;->b:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method static synthetic a(Livo;)Ljac;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Livo;->a:Ljac;

    return-object v0
.end method


# virtual methods
.method public a(Ljqi;)V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljbf;

    new-instance v1, Livp;

    invoke-direct {v1, p0}, Livp;-><init>(Livo;)V

    iget-object v2, p0, Livo;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljbf;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 60
    invoke-virtual {v0, p1}, Ljbf;->a(Ljqi;)V

    .line 61
    return-void
.end method
