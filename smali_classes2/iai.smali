.class public Liai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liag;


# instance fields
.field private a:Liah;

.field private b:Libg;


# direct methods
.method public constructor <init>(Liah;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Liai;->a:Liah;

    .line 23
    new-instance v0, Liba;

    invoke-direct {v0}, Liba;-><init>()V

    iput-object v0, p0, Liai;->b:Libg;

    .line 24
    return-void
.end method

.method static synthetic a(Liai;)Liah;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Liai;->a:Liah;

    return-object v0
.end method


# virtual methods
.method public a(Lhzq;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Liai;->b:Libg;

    new-instance v1, Liaj;

    invoke-direct {v1, p0}, Liaj;-><init>(Liai;)V

    invoke-interface {v0, v1, p1}, Libg;->d(Lgkw;Lgoe;)V

    .line 58
    return-void
.end method
