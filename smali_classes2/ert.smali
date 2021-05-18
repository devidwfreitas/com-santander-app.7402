.class Lert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lers;


# direct methods
.method constructor <init>(Lers;Z)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lert;->b:Lers;

    iput-boolean p2, p0, Lert;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lert;->b:Lers;

    iget-object v0, v0, Lers;->a:Lerq;

    iget-boolean v1, p0, Lert;->a:Z

    invoke-static {v0, v1}, Lerq;->a(Lerq;Z)V

    .line 115
    return-void
.end method
