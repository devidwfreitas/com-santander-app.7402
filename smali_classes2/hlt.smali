.class Lhlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmz;


# instance fields
.field final synthetic a:Lhln;

.field final synthetic b:Lhlp;


# direct methods
.method constructor <init>(Lhlp;Lhln;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lhlt;->b:Lhlp;

    iput-object p2, p0, Lhlt;->a:Lhln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lhlt;->a:Lhln;

    invoke-interface {v0}, Lhln;->a()V

    .line 81
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhlt;->a:Lhln;

    invoke-interface {v0}, Lhln;->b()V

    .line 86
    return-void
.end method
