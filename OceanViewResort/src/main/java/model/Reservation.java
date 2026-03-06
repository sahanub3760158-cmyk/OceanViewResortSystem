package model;

public class Reservation {

    private int reservationId;
    private String guestName;
    private String address;
    private String contact;
    private String roomType;
    private int nights;

    public Reservation() {}

    public Reservation(int reservationId, String guestName, String address,
                       String contact, String roomType, int nights) {
        this.reservationId = reservationId;
        this.guestName = guestName;
        this.address = address;
        this.contact = contact;
        this.roomType = roomType;
        this.nights = nights;
    }

    public int getReservationId() { return reservationId; }
    public void setReservationId(int reservationId) { this.reservationId = reservationId; }

    public String getGuestName() { return guestName; }
    public void setGuestName(String guestName) { this.guestName = guestName; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public String getContact() { return contact; }
    public void setContact(String contact) { this.contact = contact; }

    public String getRoomType() { return roomType; }
    public void setRoomType(String roomType) { this.roomType = roomType; }

    public int getNights() { return nights; }
    public void setNights(int nights) { this.nights = nights; }
}