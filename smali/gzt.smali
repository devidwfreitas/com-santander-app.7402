.class public Lgzt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ticket"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "systemAcronym"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "renewTicket"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgzt;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lgzt;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lgzt;->c:Ljava/lang/String;

    .line 27
    return-void
.end method
