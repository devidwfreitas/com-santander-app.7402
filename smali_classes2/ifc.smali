.class public Lifc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lifb;


# instance fields
.field private a:Lifw;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lifw;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lifc;->a:Lifw;

    .line 28
    iput-object p2, p0, Lifc;->b:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method static synthetic a(Lifc;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lifc;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lifc;)Lifw;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lifc;->a:Lifw;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lifz;

    new-instance v1, Lifd;

    invoke-direct {v1, p0, p1}, Lifd;-><init>(Lifc;Z)V

    invoke-direct {v0, v1}, Lifz;-><init>(Lgkw;)V

    .line 54
    invoke-virtual {v0, p1}, Lifz;->a(Z)V

    .line 55
    return-void
.end method
