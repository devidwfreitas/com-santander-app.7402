.class public Lkpm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkph;

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkph;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lkpm;->a:Lkph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lkpm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lkpm;->c:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lkpm;->c:Ljava/lang/String;

    return-object v0
.end method
