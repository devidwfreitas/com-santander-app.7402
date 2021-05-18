.class public Lgdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgdg;


# instance fields
.field private a:Lgcc;


# direct methods
.method public constructor <init>(Lgcc;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lgdh;->a:Lgcc;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lgdh;->a:Lgcc;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lgdh;->a:Lgcc;

    invoke-interface {v0}, Lgcc;->a()V

    .line 25
    :cond_0
    return-void
.end method
