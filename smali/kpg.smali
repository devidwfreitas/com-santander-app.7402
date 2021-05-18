.class Lkpg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field d:Lkog;
    .annotation runtime Leks;
        a = "assistance"
    .end annotation
.end field

.field final synthetic e:Lkpc;


# direct methods
.method constructor <init>(Lkpc;)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lkpg;->e:Lkpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Lkog;

    invoke-direct {v0}, Lkog;-><init>()V

    iput-object v0, p0, Lkpg;->d:Lkog;

    return-void
.end method
