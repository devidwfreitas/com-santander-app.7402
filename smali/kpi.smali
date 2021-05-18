.class public Lkpi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkph;

.field private b:Lkpj;
    .annotation runtime Leks;
        a = "document"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkph;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lkpi;->a:Lkph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkpj;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lkpi;->b:Lkpj;

    return-object v0
.end method
