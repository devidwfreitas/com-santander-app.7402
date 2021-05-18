.class public Ljqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljqe;


# instance fields
.field private a:Ljrd;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljrd;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ljqf;->a:Ljrd;

    .line 24
    iput-object p2, p0, Ljqf;->b:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method static synthetic a(Ljqf;)Ljrd;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ljqf;->a:Ljrd;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljrg;

    new-instance v1, Ljqg;

    invoke-direct {v1, p0, p1, p2}, Ljqg;-><init>(Ljqf;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Ljqf;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljrg;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 37
    invoke-virtual {v0, p1, p2}, Ljrg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
