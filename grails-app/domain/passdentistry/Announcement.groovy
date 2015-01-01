package passdentistry

class Announcement {

    static mapping = {
        announcement type: 'text'
    }

    static constraints = {
        title blank: false
        announcement blank: false
        date blank: false
    }

    String title
    String announcement
    Date date

    @Override
    String toString(){
        title
    }

    String displayDate(){
        date.format("MMMM yyyy")
    }

}
