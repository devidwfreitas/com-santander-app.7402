.class Lhni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lhmz;

.field final synthetic b:Lhnc;


# direct methods
.method constructor <init>(Lhnc;Lhmz;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lhni;->b:Lhnc;

    iput-object p2, p0, Lhni;->a:Lhmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lhni;->a:Lhmz;

    invoke-interface {v0}, Lhmz;->a()V

    .line 226
    return-void
.end method
