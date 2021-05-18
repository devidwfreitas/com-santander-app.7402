.class public Lkpk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkph;

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkph;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkpk;->a:Lkph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lkpk;->b:Ljava/lang/String;

    return-object v0
.end method
